-- SQL Load file
-- This file loads the dataset of exercises into the DB and should only be run once
-- This file is not ready to run yet as we need to change the muscles from the research to fit 
-- into the muscle categories we support from my-app/src/pages/muscleslist.txt

-- Insert statements for muscles
INSERT INTO muscles (name) VALUES 
('trapezius'),
('upper-back'),
('lower-back'),
('chest'),
('biceps'),
('triceps'),
('forearm'),
('back-deltoids'),
('front-deltoids'),
('abs'),
('obliques'),
('adductor'),
('hamstring'),
('quadriceps'),
('abductors'),
('calves'),
('gluteal'),
('head'),
('neck');

-- Insert statements for workouts
INSERT INTO workouts (name, description, intensity, video) VALUES 
('Barbell Bench Press', 'Muscles Targeted: Pectoralis major (chest), anterior deltoids (front shoulders), triceps
Intensity: Moderate to high', 2, NULL),
('Incline Bench Press', 'Muscles Targeted: Upper chest (clavicular head of pectoralis major), anterior deltoids, triceps
Intensity: Moderate to high', 2, NULL),
('Dumbbell Flyes', 'Muscles Targeted: Pectoralis major, anterior deltoids, serratus anterior
Intensity: Moderate', 2, NULL),
('Push-ups', 'Muscles Targeted: Pectoralis major, anterior deltoids, triceps, serratus anterior
Intensity: Low to moderate', 1, NULL),
('Cable Chest Press', 'Muscles Targeted: Pectoralis major, anterior deltoids, triceps
Intensity: Moderate', 2, NULL),
('Chest Dips', 'Muscles Targeted: Pectoralis major, anterior deltoids, triceps, serratus anterior
Intensity: Moderate to high', 2, NULL),
('Deadlift', 'Muscles Targeted: Erector spine (lower back), latissimus dorsi (lats), trapezius, rhomboids, glutes, hamstrings
Intensity: High', 3, NULL),
('Pull-ups/Chin-ups', 'Muscles Targeted: Latissimus dorsi, biceps, rear deltoids, upper back (trapezius and rhomboids)
Intensity: High', 3, NULL),
('Bent-over Rows (Barbell or Dumbbell)', 'Muscles Targeted: Latissimus dorsi, rhomboids, lower and middle trapezius, rear deltoids, biceps
Intensity: Moderate to high', 2, NULL),
('T-Bar Rows', 'Muscles Targeted: Latissimus dorsi, rhomboids, rear deltoids, lower and middle trapezius, biceps
Intensity: Moderate to high', 2, NULL),
('Lat Pulldowns', 'Muscles Targeted: Latissimus dorsi, biceps, rear deltoids, upper back (trapezius and rhomboids)
Intensity: Moderate', 2, NULL),
('Seated Cable Rows', 'Muscles Targeted: Latissimus dorsi, rhomboids, rear deltoids, lower and middle trapezius, biceps
Intensity: Moderate', 2, NULL),
('Squats', 'Muscles Targeted: Quadriceps, hamstrings, glutes, calves
Intensity: Moderate to high', 3, NULL),
('Lunges (Walking or Stationary)', 'Muscles Targeted: Quadriceps, hamstrings, glutes, calves
Intensity: Moderate', 2, NULL),
('Leg Press', 'Muscles Targeted: Quadriceps, hamstrings, glutes, calves
Intensity: Moderate', 2, NULL),
('Romanian Deadlifts', 'Muscles Targeted: Hamstrings, glutes, lower back
Intensity: Moderate to high', 3, NULL),
('Leg Curls', 'Muscles Targeted: Hamstrings
Intensity: Moderate', 2, NULL),
('Calf Raises', 'Muscles Targeted: Gastrocnemius, soleus
Intensity: Low to moderate', 1, NULL),
('Overhead Press (Barbell or Dumbbell)', 'Muscles Targeted: Deltoids (shoulders), triceps
Intensity: Moderate to high', 3, NULL),
('Lateral Raises', 'Muscles Targeted: Lateral deltoids
Intensity: Moderate', 2, NULL),
('Front Raises', 'Muscles Targeted: Anterior deltoids
Intensity: Moderate', 2, NULL),
('Upright Rows', 'Muscles Targeted: Deltoids, traps, biceps
Intensity: Moderate', 2, NULL),
('Arnold Press', 'Muscles Targeted: Deltoids, triceps
Intensity: Moderate to high', 3, NULL),
('Face Pulls', 'Muscles Targeted: Rear deltoids, rhomboids, traps, external rotators of the shoulder
Intensity: Moderate', 2, NULL),
('Barbell or Dumbbell Bicep Curl', 'Muscles Targeted: Biceps brachii
Intensity: Moderate', 2, NULL),
('Hammer Curls', 'Muscles Targeted: Biceps brachii, brachialis, brachioradialis
Intensity: Moderate', 2, NULL),
('Preacher Curls', 'Muscles Targeted: Biceps brachii
Intensity: Moderate', 2, NULL),
('Concentration Curls', 'Muscles Targeted: Biceps brachii
Intensity: Moderate', 2, NULL),
('Tricep Dips', 'Muscles Targeted: Triceps, chest, shoulders
Intensity: Moderate to high', 3, NULL),
('Skullcrushers (lying tricep extension)', 'Muscles Targeted: Triceps
Intensity: Moderate to high', 3, NULL),
('Tricep Kickbacks', 'Muscles Targeted: Triceps
Intensity: Moderate', 2, NULL),
('Cable Tricep Pushdowns', 'Muscles Targeted: Triceps
Intensity: Moderate', 2, NULL),
('Overhead Tricep Extension', 'Muscles Targeted: Triceps
Intensity: Moderate', 2, NULL),
('Plank', 'Muscles Targeted: Rectus abdominis, transverse abdominis, obliques, hip flexors
Intensity: Moderate', 2, NULL),
('Russian Twists', 'Muscles Targeted: Obliques, rectus abdominis
Intensity: Moderate', 2, NULL),
('Bicycle Crunches', 'Muscles Targeted: Rectus abdominis, obliques
Intensity: Moderate', 2, NULL),
('Leg Raises', 'Muscles Targeted: Lower abdominals, hip flexors
Intensity: Moderate', 2, NULL),
('Mountain Climbers', 'Muscles Targeted: Full core, shoulders, hip flexors
Intensity: Moderate to high', 3, NULL),
('Woodchoppers', 'Muscles Targeted: Obliques, rectus abdominis, transverse abdominis
Intensity: Moderate to high', 3, NULL);

-- Insert statements for muscles_to_workouts
INSERT INTO muscles_to_workouts (muscle_id, workout_id) VALUES 
(4, 1), -- Chest - Barbell Bench Press
(4, 2), -- Chest - Incline Bench Press
(4, 3), -- Chest - Dumbbell Flyes
(4, 4), -- Chest - Push-ups
(4, 5), -- Chest - Cable Chest Press
(4, 6), -- Chest - Chest Dips
(1, 7), -- Back - Deadlift
(1, 8), -- Back - Pull-ups/Chin-ups
(1, 9), -- Back - Bent-over Rows (Barbell or Dumbbell)
(1, 10), -- Back - T-Bar Rows
(1, 11), -- Back - Lat Pulldowns
(1, 12), -- Back - Seated Cable Rows
(13, 13), -- Legs - Squats
(13, 14), -- Legs - Lunges (Walking or Stationary)
(13, 15), -- Legs - Leg Press
(14, 16), -- Legs - Romanian Deadlifts
(14, 17), -- Legs - Leg Curls
(15, 18), -- Legs - Calf Raises
(16, 19), -- Shoulders - Overhead Press (Barbell or Dumbbell)
(16, 20), -- Shoulders - Lateral Raises
(16, 21), -- Shoulders - Front Raises
(16, 22), -- Shoulders - Upright Rows
(16, 23), -- Shoulders - Arnold Press
(16, 24), -- Shoulders - Face Pulls
(5, 25), -- Arms - Barbell or Dumbbell Bicep Curl
(5, 26), -- Arms - Hammer Curls
(5, 27), -- Arms - Preacher Curls
(5, 28), -- Arms - Concentration Curls
(6, 29), -- Arms - Tricep Dips
(6, 30), -- Arms - Skullcrushers (lying tricep extension)
(6, 31), -- Arms - Tricep Kickbacks
(6, 32), -- Arms - Cable Tricep Pushdowns
(6, 33), -- Arms - Overhead Tricep Extension
(10, 34), -- Core - Plank
(10, 35), -- Core - Russian Twists
(10, 36), -- Core - Bicycle Crunches
(10, 37), -- Core - Leg Raises
(10, 38), -- Core - Mountain Climbers
(10, 39); -- Core - Woodchoppers
