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

// Template route for querying database
app.get('/muscles/:muscleName', (req, res) =>{
    const muscleName = req.params.muscleName;

    // Query database to get corresponding muscle ID
    const muscleID = db.prepare('SELECT id FROM muscles WHERE name = ?').pluck().get(muscleName);
    //log the full request path:
    console.log(req.originalUrl);
    console.log(muscleName, 'has ID:', muscleID);

    // Query database to get list of workout IDs paired with muscleID
    const workoutIDs = db.prepare('SELECT workout_id FROM muscles_to_workouts WHERE muscle_id = ?').all(muscleID);

    // Iterate through all workoutIDs to get an array of corresponding workouts
    const workouts = [];
    workoutIDs.forEach(row => {
        const workoutID = row.workout_id;
        const workout = db.prepare('SELECT * FROM workouts WHERE id = ?').get(workoutID);
        if (workout) {
            workouts.push(workout);
        }
    })
    // workouts[] now contains an array of JSON objects, each representing details of each workout
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