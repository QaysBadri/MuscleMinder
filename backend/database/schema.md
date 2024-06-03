# MuscleMinder Database Schema
This file provides documentation for the database schema and how it is meant to be used. The database contains 3 tables: 
- muscles
- workouts
- muscles_to_workouts

These 3 tables are defined in [create.sql](create.sql). 
Together they serve the backend relevant information about workouts that are associated with each muscle group.

## Muscles Table
The `muscles` table has columns:
- id INTEGER PRIMARY KEY 
- name TEXT

Each muscle corresponds to a unique integer ID. The muscle names are spelled exactly as found in the 
react library we use to display muscles on the front end. 
A list of these names can be found in the [frontend pages folder](../../my-app/src/pages/musclelist.txt) or in [load.sql](load.sql). 
All fields are required in this table.\
A sample entry in this table looks like
```
"name":biceps,
"id":1
```

## Workouts Table
The `workouts` table has columns:
* id INTEGER PRIMARY KEY
* name TEXT
* description TEXT
* intensity INTEGER
* video TEXT
* needsDumbbell BOOLEAN
* needsBarbell BOOLEAN
* needsMachine BOOLEAN
* needsCable BOOLEAN
* split TEXT

The workouts table contains a list of workouts that have a unique integer ID and relevant workout details. 
The ID and name fields are required for each entry. 
The boolean variables that track necessary equipment are set to false by default. We set the values of these booleans in
`UPDATE` statements at the bottom of [load.sql](load.sql). As of right now we only have one entry for workouts that 
can interchange equipment (like dumbbells vs barbells). The split field was added in later, so the update statement to the
table and the values for all workouts are also appended to [load.sql](load.sql).

## Workouts to Muscles Table
The `muscles_to_workouts` table has columns:
* muscle_id INTEGER
* workout_id INTEGER

Both fields are foreign keys to the `muscles` and `workouts` tables respectively. This table is how we identify which 
workouts train which muscles, or which muscles are trained in which workouts. The table is a list of id pairs indicating
a relation between a muscle and a workout.
