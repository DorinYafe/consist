const jobsDao = require('../dao/jobsDao');

async function addJob(job) {
    const newJob = await jobsDao.addJob(job);
    // console.log(newJob);
    return newJob;
};

async function getAllJobs() {
    const jobs = await jobsDao.getAllJobs();
    // console.log(jobs);
    return jobs;
};
// getAllJobs();

async function deleteOldJobs() {
    await jobsDao.deleteOldJobs();
};

module.exports = {
    addJob,
    getAllJobs,
    deleteOldJobs,
};