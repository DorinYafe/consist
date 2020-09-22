const express = require('express');
const app = express();
const PORT = process.env.PORT || 3001;
const jobsController = require('./controllers/jobsController');

app.use(express.json());
app.use('/jobs', jobsController);

app.listen(PORT, () => {
    console.log(`Server is up on ${PORT} at ${new Date()}`);
});