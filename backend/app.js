const express = require('express');
const app = express();
//random port
const port = 8080;

//for parse incoming JSON data
app.use(express.json());

app.post('/data', (req, res) => {
    console.log("Received data: ", req.body);
    res.status(200).send('Data received!');
});

//starts the server
app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}`);
});