//"node app.js" to run the server

const express = require('express');
const app = express();
const fs = require('fs');
const Database = require('better-sqlite3');
//random port
const port = 8080;

// SQLite uses a file to represent the database
const db = new Database('database/database.db');

// Read the Create SQL file
const sql = fs.readFileSync('database/create.sql', 'utf8');
db.exec(sql);
db.close();


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