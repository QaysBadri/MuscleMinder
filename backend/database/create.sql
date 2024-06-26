CREATE TABLE IF NOT EXISTS muscles (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS workouts (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    intensity INTEGER, -- Intensity level (1-3)
    video TEXT, -- Link to video
    needsDumbbell BOOLEAN DEFAULT 0,
    needsBarbell BOOLEAN DEFAULT 0,
    needsMachine BOOLEAN DEFAULT 0,
    needsCable BOOLEAN DEFAULT 0
);

CREATE TABLE IF NOT EXISTS muscles_to_workouts (
    muscle_id INTEGER,
    workout_id INTEGER,
    FOREIGN KEY (muscle_id) REFERENCES muscles(id),
    FOREIGN KEY (workout_id) REFERENCES workouts(id)
);
