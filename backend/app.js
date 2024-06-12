//"node app.js" to run the server

const express = require('express');
const app = express();
const cors = require('cors');
const fs = require('fs');
const Database = require('better-sqlite3');
//random port
const port = 8080;

// SQLite uses a file to represent the database
const db = new Database('database/database.db');

// Read the Create SQL file (We only run this if the database.db file is not initialized)
// const sql = fs.readFileSync('database/create.sql', 'utf8');
// db.exec(sql);



//for parse incoming JSON data
app.use(express.json());
app.use(cors());

app.post('/data', (req, res) => {
    console.log("Received data: ", req.body);
    res.status(200).send('Data received!');
});

app.get('/muscles/:muscleName', (req, res) => {
    const muscleName = req.params.muscleName;

    const muscleID = db.prepare('SELECT id FROM muscles WHERE name = ?').pluck().get(muscleName);
    console.log(req.originalUrl);
    console.log(muscleName, 'has ID:', muscleID);

    const workoutIDs = db.prepare('SELECT workout_id FROM muscles_to_workouts WHERE muscle_id = ?').all(muscleID);

    const workoutIDsSet = new Set(workoutIDs.map(row => row.workout_id));
    const workouts = [];
    workoutIDsSet.forEach(workoutID => {
        const workout = db.prepare('SELECT * FROM workouts WHERE id = ?').get(workoutID);
        if (workout) {
            workouts.push(workout);
        }
    });
    console.log(workouts);
    res.json(workouts);
});


app.get('/workouts', (req, res) => {
    try {
        const workouts = db.prepare('SELECT * FROM workouts').all();
        res.json(workouts);
        console.log(workouts);
    } catch (error) {
        console.error('Error in /workouts route:', error);
        res.status(500).send('Internal Server Error');
    }
});




//starts the server
app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}`);
});