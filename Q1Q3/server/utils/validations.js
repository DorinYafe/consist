const jobsDao = require('../dao/jobsDao');

async function isJobStateValid(jobState) {
    const allowedStates = [0, 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768];

    if (!allowedStates.includes(jobState)) {
        console.log('Job status is invalid!');
        return;
    };

    console.log(jobState);
};
// isJobStateValid(513);

function Response(success, message, content) {
    this.success = success
    this.message = message
    this.content = content
};

module.exports = {
    isJobStateValid,
    Response,
};