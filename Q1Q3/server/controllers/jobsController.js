const express = require('express');
const router = express.Router();
const jobsLogic = require('../logic/jobsLogic');
const { Response, } = require('../utils/validations');

async function isResolved(httpReq, httpMethod, httpBaseUrl, httpRes) {
    const isHttpMethodValid = await checkHttpMethod(httpReq.method, httpMethod);
    const httpBaseURL = await isUrlFound(httpReq, httpBaseUrl);
    const isApiProtected = await isProtectedApi(httpReq);
    const userAuthorization = await isAuthorized(httpReq.headers.authorization, httpRes);

    return new Response(
        true,
        '',
        { isHttpMethodValid, httpBaseURL, isApiProtected, userAuthorization, },
    );
};

async function checkHttpMethod(httpReq, httpMethod) {
    if (httpReq !== httpMethod) {
        return new Response(
            false,
            'Invalid http method!',
            null,
        );
    };
    return new Response(
        true,
        '',
        httpMethod,
    );
};

async function isUrlFound(httpReq, httpBaseUrl) {
    if (httpReq.baseUrl !== httpBaseUrl) {
        return new Response(
            false,
            'Invalid base url!',
            null,
        );
    };
    return new Response(
        true,
        '',
        httpBaseUrl,
    );
};

async function isAuthorized(httpReq) {
    if (!!httpReq) {
        return new Response(
            false,
            'Unauthorized!',
            null,
        );
    };
    return new Response(
        true,
        '',
        'token',
    );
};

async function isProtectedApi(httpReq) {
    if (httpReq.headers["content-type"] != 'application/json' && !httpReq.headers["www-authenticate"]) {
        return new Response(
            false,
            'Invalid content-type or user unauthenticated!',
            null,
        );
    };
    return new Response(
        true,
        'Http content-type is valid and the user authenticated successfuly.',
        '',
    );
};

router.post('/', async (req, res) => {
    try {
        const baseUrl = req.baseUrl;
        const serverResponse = await isResolved(req, 'POST', baseUrl, res);
        const job = req.body;
        const newJob = await jobsLogic.addJob(job);
        res.status(201).json({ serverResponse, newJob });
    }
    catch (e) {
        res.status(500).send(new Response(false, e.message, serverResponse));
    };
});

router.get('/', async (req, res) => {
    try {
        const jobs = await jobsLogic.getAllJobs();
        res.send(jobs);
    }
    catch (e) {
        res.status(500).send(e.message);
    };
});

router.delete('/', async (req, res) => {
    try {
        await jobsLogic.deleteOldJobs();
        res.send('Old jobs deleted successfuly!');
    }
    catch (e) {
        res.status(500).send(e.message);
    };
});

module.exports = router;