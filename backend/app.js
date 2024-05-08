//"node app.js" to run the server

const express = require('express');
const app = express();
const Database = require('better-sqlite3');
//random port
const port = 8080;

// SQLite uses a file to represent the database
const db = new Database('database/database.db');

// Filler table
db.exec('CREATE TABLE IF NOT EXISTS workouts (name TEXT PRIMARY KEY, muscle1 TEXT, muscle2 TEXT)');
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