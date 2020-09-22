const connection = require('./connection-wrapper');

async function addJob(job) {
    const sql = `insert into jobs 
    (PrintBOSServerIP, 
        RequestId, 
        JobState,
        OutputReady,
        QueueName,
        UserName,
        JobName,
        JobFileName,
        JobSize,
        StatusCode,
        StatusMessage,
        CREATETIME,
        LASTUPDATE) values (?, ?, ? , ?, ? , ?, ?, ?, ?, ?, ?, ?, ?)`;
    const params = [
        job.PrintBOSServerIP,
        job.RequestId,
        job.JobState,
        job.OutputReady,
        job.QueueName,
        job.UserName,
        job.JobName,
        job.JobFileName,
        job.JobSize,
        job.StatusCode,
        job.StatusMessage,
        job.CREATETIME,
        job.LASTUPDATE];
    const newJob = await connection.executeWithParams(sql, params);
    // console.log(newJob);
    return newJob;
};

// addJob({
//     PrintBOSServerIP: 'server IP',
//     RequestId: '1',
//     JobState: 0,
//     OutputReady: '1',
//     QueueName: 'queue name',
//     UserName: 'username',
//     JobName: 'job name',
//     JobFileName: 'job file name',
//     JobSize: '1.1',
//     StatusCode: 'status code',
//     StatusMessage: 'status message',
//     CREATETIME: '2020-09-14',
//     LASTUPDATE: '2020-09-14',
// });

async function getAllJobs() {
    const sql = `select * from jobs`;
    const jobs = await connection.execute(sql);
    // console.log(jobs[0].);
    return jobs;
};
// getAllJobs();

async function deleteOldJobs() {
    const sql = `DELETE FROM jobs WHERE DATE(LASTUPDATE) < (curdate() - INTERVAL 2 DAY) 
    and DATE(LASTUPDATE) > (curdate() - INTERVAL 5 DAY) LIMIT 1000`;
    await connection.execute(sql);
};
// deleteOldJobs();

module.exports = {
    addJob,
    getAllJobs,
    deleteOldJobs,
};