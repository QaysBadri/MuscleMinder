-- SQL Load file
-- This file loads the dataset of exercises into the DB and should only be run once
-- This file is not ready to run yet as we need to change the muscles from the research to fit 
-- into the muscle categories we support from my-app/src/pages/muscleslist.txt

-- Insert statements for muscles
INSERT INTO muscles (id, name) VALUES 
    (1, 'trapezius'),
    (2, 'upper-back'),
    (3, 'lower-back'),
    (4, 'chest'),
    (5, 'biceps'),
    (6, 'triceps'),
    (7, 'forearm'),
    (8, 'back-deltoids'),
    (9, 'front-deltoids'),
    (10, 'abs'),
    (11, 'obliques'),
    (12, 'adductor'),
    (13, 'hamstring'),
    (14, 'quadriceps'),
    (15, 'abductors'),
    (16, 'calves'),
    (17, 'gluteal'),
    (18, 'head'),
    (19, 'neck');

-- Insert statements for workouts
INSERT INTO workouts (id, name, description, intensity, video) VALUES 
    (1, 'Barbell Bench Press', 'Muscles Targeted: Pectoralis major (chest), anterior deltoids (front shoulders), triceps
    Intensity: Moderate to high', 2, NULL),
    (2, 'Incline Bench Press', 'Muscles Targeted: Upper chest (clavicular head of pectoralis major), anterior deltoids, triceps
    Intensity: Moderate to high', 2, NULL),
    (3, 'Dumbbell Flyes', 'Muscles Targeted: Pectoralis major, anterior deltoids, serratus anterior
    Intensity: Moderate', 2, NULL),
    (4, 'Push-ups', 'Muscles Targeted: Pectoralis major, anterior deltoids, triceps, serratus anterior
    Intensity: Low to moderate', 1, NULL),
    (5, 'Cable Chest Press', 'Muscles Targeted: Pectoralis major, anterior deltoids, triceps
    Intensity: Moderate', 2, NULL),
    (6, 'Chest Dips', 'Muscles Targeted: Pectoralis major, anterior deltoids, triceps, serratus anterior
    Intensity: Moderate to high', 2, NULL),
    (7, 'Deadlift', 'Muscles Targeted: Erector spine (lower back), latissimus dorsi (lats), trapezius, rhomboids, glutes, hamstrings
    Intensity: High', 3, NULL),
    (8, 'Pull-ups/Chin-ups', 'Muscles Targeted: Latissimus dorsi, biceps, rear deltoids, upper back (trapezius and rhomboids)
    Intensity: High', 3, NULL),
    (9, 'Bent-over Rows (Barbell or Dumbbell)', 'Muscles Targeted: Latissimus dorsi, rhomboids, lower and middle trapezius, rear deltoids, biceps
    Intensity: Moderate to high', 2, NULL),
    (10, 'T-Bar Rows', 'Muscles Targeted: Latissimus dorsi, rhomboids, rear deltoids, lower and middle trapezius, biceps
    Intensity: Moderate to high', 2, NULL),
    (11, 'Lat Pulldowns', 'Muscles Targeted: Latissimus dorsi, biceps, rear deltoids, upper back (trapezius and rhomboids)
    Intensity: Moderate', 2, NULL),
    (12, 'Seated Cable Rows', 'Muscles Targeted: Latissimus dorsi, rhomboids, rear deltoids, lower and middle trapezius, biceps
    Intensity: Moderate', 2, NULL),
    (13, 'Squats', 'Muscles Targeted: Quadriceps, hamstrings, glutes, calves
    Intensity: Moderate to high', 3, NULL),
    (14, 'Lunges', 'Muscles Targeted: Quadriceps, hamstrings, glutes, calves
    Intensity: Moderate', 2, NULL),
    (15, 'Leg Press', 'Muscles Targeted: Quadriceps, hamstrings, glutes, calves
    Intensity: Moderate', 2, NULL),
    (16, 'Romanian Deadlifts', 'Muscles Targeted: Hamstrings, glutes, lower back
    Intensity: Moderate to high', 3, NULL),
    (17, 'Leg Curls', 'Muscles Targeted: Hamstrings
    Intensity: Moderate', 2, NULL),
    (18, 'Calf Raises', 'Muscles Targeted: Gastrocnemius, soleus
    Intensity: Low to moderate', 1, NULL),
    (19, 'Overhead Press (Barbell or Dumbbell)', 'Muscles Targeted: Deltoids (shoulders), triceps
    Intensity: Moderate to high', 3, NULL),
    (20, 'Lateral Raises', 'Muscles Targeted: Lateral deltoids
    Intensity: Moderate', 2, NULL),
    (21, 'Front Raises', 'Muscles Targeted: Anterior deltoids
    Intensity: Moderate', 2, NULL),
    (22, 'Upright Rows', 'Muscles Targeted: Deltoids, traps, biceps
    Intensity: Moderate', 2, NULL),
    (23, 'Arnold Press', 'Muscles Targeted: Deltoids, triceps
    Intensity: Moderate to high', 3, NULL),
    (24, 'Face Pulls', 'Muscles Targeted: Rear deltoids, rhomboids, traps, external rotators of the shoulder
    Intensity: Moderate', 2, NULL),
    (25, 'Barbell or Dumbbell Bicep Curl', 'Muscles Targeted: Biceps brachii
    Intensity: Moderate', 2, NULL),
    (26, 'Hammer Curls', 'Muscles Targeted: Biceps brachii, brachialis, brachioradialis
    Intensity: Moderate', 2, NULL),
    (27, 'Preacher Curls', 'Muscles Targeted: Biceps brachii
    Intensity: Moderate', 2, NULL),
    (28, 'Concentration Curls', 'Muscles Targeted: Biceps brachii
    Intensity: Moderate', 2, NULL),
    (29, 'Tricep Dips', 'Muscles Targeted: Triceps, chest, shoulders
    Intensity: Moderate to high', 3, NULL),
    (30, 'Skullcrushers (lying tricep extension)', 'Muscles Targeted: Triceps
    Intensity: Moderate to high', 3, NULL),
    (31, 'Tricep Kickbacks', 'Muscles Targeted: Triceps
    Intensity: Moderate', 2, NULL),
    (32, 'Cable Tricep Pushdowns', 'Muscles Targeted: Triceps
    Intensity: Moderate', 2, NULL),
    (33, 'Overhead Tricep Extension', 'Muscles Targeted: Triceps
    Intensity: Moderate', 2, NULL),
    (34, 'Plank', 'Muscles Targeted: Rectus abdominis, transverse abdominis, obliques, hip flexors
    Intensity: Moderate', 2, NULL),
    (35, 'Russian Twists', 'Muscles Targeted: Obliques, rectus abdominis
    Intensity: Moderate', 2, NULL),
    (36, 'Bicycle Crunches', 'Muscles Targeted: Rectus abdominis, obliques
    Intensity: Moderate', 2, NULL),
    (37, 'Leg Raises', 'Muscles Targeted: Lower abdominals, hip flexors
    Intensity: Moderate', 2, NULL),
    (38, 'Mountain Climbers', 'Muscles Targeted: Full core, shoulders, hip flexors
    Intensity: Moderate to high', 3, NULL),
    (39, 'Woodchoppers', 'Muscles Targeted: Obliques, rectus abdominis, transverse abdominis
    Intensity: Moderate to high', 3, NULL);

-- Insert statements for muscles_to_workouts
INSERT INTO muscles_to_workouts (muscle_id, workout_id) VALUES
    (4, 1), -- Chest - Barbell Bench Press
    (9, 1), -- Front Deltoids - Barbell Bench Press
    (6, 1), -- Triceps - Barbell Bench Press
    (4, 2), -- Chest - Incline Bench Press
    (9, 2), -- Front Deltoids - Incline Bench Press
    (6, 2), -- Triceps - Incline Bench Press
    (4, 3), -- Chest - Dumbbell Flyes
    (9, 3), -- Front Deltoids - Dumbbell Flyes
    (4, 4), -- Chest - Push-ups
    (9, 4), -- Front Deltoids - Push-ups
    (6, 4), -- Triceps - Push-ups
    (4, 5), -- Chest - Cable Chest Press
    (9, 5), -- Front Deltoids - Cable Chest Press
    (6, 5), -- Triceps - Cable Chest Press
    (4, 6), -- Chest - Chest Dips
    (9, 6), -- Front Deltoids - Chest Dips
    (6, 6), -- Triceps - Chest Dips
    (3, 7), -- Lower Back - Deadlift
    (2, 7), -- Upper Back - Deadlift
    (13, 7), -- Hamstrings - Deadlift
    (17, 7), -- Gluteal - Deadlift
    (2, 8), -- Upper Back - Pull-ups/Chin-ups
    (5, 8), -- Biceps - Pull-ups/Chin-ups
    (8, 8), -- Back Deltoids - Pull-ups/Chin-ups
    (2, 9), -- Upper Back - Bent-over Rows
    (5, 9), -- Biceps - Bent-over Rows
    (8, 9), -- Back Deltoids - Bent-over Rows
    (2, 10), -- Upper Back - T-Bar Rows
    (5, 10), -- Biceps - T-Bar Rows
    (8, 10), -- Back Deltoids - T-Bar Rows
    (2, 11), -- Upper Back - Lat Pulldowns
    (5, 11), -- Biceps - Lat Pulldowns
    (8, 11), -- Back Deltoids - Lat Pulldowns
    (2, 12), -- Upper Back - Seated Cable Rows
    (5, 12), -- Biceps - Seated Cable Rows
    (8, 12), -- Back Deltoids - Seated Cable Rows
    (14, 13), -- Quadriceps - Squats
    (13, 13), -- Hamstrings - Squats
    (17, 13), -- Gluteal - Squats
    (16, 13), -- Calves - Squats
    (14, 14), -- Quadriceps - Lunges
    (13, 14), -- Hamstrings - Lunges
    (17, 14), -- Gluteal - Lunges
    (16, 14), -- Calves - Lunges
    (14, 15), -- Quadriceps - Leg Press
    (13, 15), -- Hamstrings - Leg Press
    (17, 15), -- Gluteal - Leg Press
    (16, 15), -- Calves - Leg Press
    (13, 16), -- Hamstrings - Romanian Deadlifts
    (17, 16), -- Gluteal - Romanian Deadlifts
    (3, 16), -- Lower Back - Romanian Deadlifts
    (13, 17), -- Hamstrings - Leg Curls
    (16, 18), -- Calves - Calf Raises
    (9, 19), -- Front Deltoids - Overhead Press
    (6, 19), -- Triceps - Overhead Press
    (9, 20), -- Front Deltoids - Lateral Raises
    (9, 21), -- Front Deltoids - Front Raises
    (9, 22), -- Front Deltoids - Upright Rows
    (5, 22), -- Biceps - Upright Rows
    (1, 22), -- Trapezius - Upright Rows
    (9, 23), -- Front Deltoids - Arnold Press
    (6, 23), -- Triceps - Arnold Press
    (8, 24), -- Back Deltoids - Face Pulls
    (2, 24), -- Upper Back - Face Pulls
    (1, 24), -- Trapezius - Face Pulls
    (5, 25), -- Biceps - Barbell or Dumbbell Bicep Curl
    (5, 26), -- Biceps - Hammer Curls
    (5, 27), -- Biceps - Preacher Curls
    (5, 28), -- Biceps - Concentration Curls
    (6, 29), -- Triceps - Tricep Dips
    (4, 29), -- Chest - Tricep Dips
    (9, 29), -- Front Deltoids - Tricep Dips
    (6, 30), -- Triceps - Skullcrushers
    (6, 31), -- Triceps - Tricep Kickbacks
    (6, 32), -- Triceps - Cable Tricep Pushdowns
    (6, 33), -- Triceps - Overhead Tricep Extension
    (10, 34), -- Abs - Plank
    (11, 35), -- Obliques - Russian Twists
    (10, 35), -- Abs - Russian Twists
    (10, 36), -- Abs - Bicycle Crunches
    (11, 36), -- Obliques - Bicycle Crunches
    (10, 37), -- Abs - Leg Raises
    (10, 38), -- Abs - Mountain Climbers
    (9, 38), -- Front Deltoids - Mountain Climbers
    (11, 39), -- Obliques - Woodchoppers
    (10, 39); -- Abs - Woodchoppers
