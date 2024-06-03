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
    (1, 'Barbell Bench Press', 'Muscles Targeted: chest, front-deltoids, triceps', 2, 'https://www.youtube.com/watch?v=gRVjAtPip0Y'),
    (2, 'Incline Bench Press', 'Muscles Targeted: chest, front-deltoids, triceps', 2, 'https://www.youtube.com/watch?v=SrqOu55lrYU'),
    (3, 'Dumbbell Flyes', 'Muscles Targeted: chest, front-deltoids', 2, 'https://www.youtube.com/watch?v=eozdVDA78K0'),
    (4, 'Push-ups', 'Muscles Targeted: chest, front-deltoids, triceps', 1, 'https://www.youtube.com/watch?v=_l3ySVKYVJ8'),
    (5, 'Cable Chest Press', 'Muscles Targeted: chest, front-deltoids, triceps', 2, 'https://www.youtube.com/watch?v=H1xkzPbvqDU'),
    (6, 'Chest Dips', 'Muscles Targeted: chest, front-deltoids, triceps', 2, 'https://www.youtube.com/watch?v=2z8JmcrW-As'),
    (7, 'Deadlift', 'Muscles Targeted: lower-back, trapezius, gluteal, hamstring', 3, 'https://www.youtube.com/watch?v=r4MzxtBKyNE'),
    (8, 'Pull-ups/Chin-ups', 'Muscles Targeted: upper-back, biceps, back-deltoids', 3, 'https://www.youtube.com/watch?v=eGo4IYlbE5g'),
    (9, 'Bent-over Rows (Barbell or Dumbbell)', 'Muscles Targeted: upper-back, back-deltoids, biceps', 2, 'https://www.youtube.com/watch?v=FWJR5Ve8bnQ'),
    (10, 'T-Bar Rows', 'Muscles Targeted: upper-back, back-deltoids, biceps', 2, 'https://www.youtube.com/watch?v=j3Igk5nyZE4'),
    (11, 'Lat Pulldowns', 'Muscles Targeted: upper-back, biceps, back-deltoids', 2, 'https://www.youtube.com/watch?v=CAwf7n6Luuc'),
    (12, 'Seated Cable Rows', 'Muscles Targeted: upper-back, back-deltoids, biceps', 2, 'https://www.youtube.com/watch?v=GZbfZ033f74'),
    (13, 'Squats', 'Muscles Targeted: quadriceps, hamstring, gluteal, calves', 3, 'https://www.youtube.com/watch?v=Dy28eq2PjcM'),
    (14, 'Lunges', 'Muscles Targeted: quadriceps, hamstring, gluteal, calves', 2, 'https://www.youtube.com/watch?v=QOVaHwm-Q6U'),
    (15, 'Leg Press', 'Muscles Targeted: quadriceps, hamstring, gluteal, calves', 2, 'https://www.youtube.com/watch?v=IZxyjW7MPJQ'),
    (16, 'Romanian Deadlifts', 'Muscles Targeted: hamstring, gluteal, lower-back', 3, 'https://www.youtube.com/watch?v=JCXUYuzwNrM'),
    (17, 'Leg Curls', 'Muscles Targeted: hamstring', 2, 'https://www.youtube.com/watch?v=ELOCsoDSmrg'),
    (18, 'Calf Raises', 'Muscles Targeted: calves', 1, 'https://www.youtube.com/watch?v=-M4-G8p8fmc'),
    (19, 'Overhead Press (Barbell or Dumbbell)', 'Muscles Targeted: front-deltoids, triceps', 3, 'https://www.youtube.com/watch?v=F3QY5vMz_6I'),
    (20, 'Lateral Raises', 'Muscles Targeted: back-deltoids', 2, 'https://www.youtube.com/watch?v=3VcKaXpzqRo'),
    (21, 'Front Raises', 'Muscles Targeted: front-deltoids', 2, 'https://www.youtube.com/watch?v=-t7fuZ0KhDA'),
    (22, 'Upright Rows', 'Muscles Targeted: front-deltoids, trapezius, biceps', 2, 'https://www.youtube.com/watch?v=amCU-ziHITM'),
    (23, 'Arnold Press', 'Muscles Targeted: front-deltoids, triceps', 3, 'https://www.youtube.com/watch?v=3ml7BH7mNwQ'),
    (24, 'Face Pulls', 'Muscles Targeted: back-deltoids, trapezius', 2, 'https://www.youtube.com/watch?v=rep-qVOkqgk'),
    (25, 'Barbell or Dumbbell Bicep Curl', 'Muscles Targeted: biceps', 2, 'https://www.youtube.com/watch?v=ykJmrZ5v0Oo'),
    (26, 'Hammer Curls', 'Muscles Targeted: biceps', 2, 'https://www.youtube.com/watch?v=zC3nLlEvin4'),
    (27, 'Preacher Curls', 'Muscles Targeted: biceps', 2, 'https://www.youtube.com/watch?v=3mtXqrkbEfI'),
    (28, 'Concentration Curls', 'Muscles Targeted: biceps', 2, 'https://www.youtube.com/watch?v=Jvj2wV0vOYU'),
    (29, 'Tricep Dips', 'Muscles Targeted: triceps, chest, front-deltoids', 3, 'https://www.youtube.com/watch?v=6kALZikXxLc'),
    (30, 'Skullcrushers (lying tricep extension)', 'Muscles Targeted: triceps', 3, 'https://www.youtube.com/watch?v=d_KZxkY_0cM'),
    (31, 'Tricep Kickbacks', 'Muscles Targeted: triceps', 2, 'https://www.youtube.com/watch?v=ZO81bExngMI'),
    (32, 'Cable Tricep Pushdowns', 'Muscles Targeted: triceps', 2, 'https://www.youtube.com/watch?v=2-LAMcpzODU'),
    (33, 'Overhead Tricep Extension', 'Muscles Targeted: triceps', 2, 'https://www.youtube.com/watch?v=-Vyt2QdsR7E&t=11s'),
    (34, 'Plank', 'Muscles Targeted: abs, obliques', 2, 'https://www.youtube.com/watch?v=ASdvN_XEl_c'),
    (35, 'Russian Twists', 'Muscles Targeted: obliques, abs', 2, 'https://www.youtube.com/watch?v=wkD8rjkodUI'),
    (36, 'Bicycle Crunches', 'Muscles Targeted: abs, obliques', 2, 'https://www.youtube.com/watch?v=9FGilxCbdz8'),
    (37, 'Leg Raises', 'Muscles Targeted: abs', 2, 'https://www.youtube.com/watch?v=l4kQd9eWclE'),
    (38, 'Mountain Climbers', 'Muscles Targeted: abs, front-deltoids, hip flexors', 3, 'https://www.youtube.com/watch?v=nmwgirgXLYM'),
    (39, 'Woodchoppers', 'Muscles Targeted: obliques, abs', 3, 'https://www.youtube.com/watch?v=pAplQXk3dkU');

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

--Update statements to indicate necessary equipment
UPDATE workouts SET needsBarbell = 1 WHERE name = 'Barbell Bench Press';
UPDATE workouts SET needsBarbell = 1 WHERE name = 'Incline Bench Press';
UPDATE workouts SET needsDumbbell = 1 WHERE name = 'Dumbbell Flyes';
UPDATE workouts SET needsCable = 1 WHERE name = 'Cable Chest Press';
UPDATE workouts SET needsBarbell = 1 WHERE name = 'Deadlift';
UPDATE workouts SET needsBarbell = 1 WHERE name = 'Romanian Deadlifts';
UPDATE workouts SET needsBarbell = 1 WHERE name = 'Bent-over Rows (Barbell or Dumbbell)';
UPDATE workouts SET needsDumbbell = 1 WHERE name = 'Bent-over Rows (Barbell or Dumbbell)';
UPDATE workouts SET needsBarbell = 1 WHERE name = 'T-Bar Rows';
UPDATE workouts SET needsMachine = 1 WHERE name = 'Lat Pulldowns';
UPDATE workouts SET needsCable = 1 WHERE name = 'Seated Cable Rows';
UPDATE workouts SET needsBarbell = 1 WHERE name = 'Squats';
UPDATE workouts SET needsDumbbell = 1 WHERE name = 'Lunges';
UPDATE workouts SET needsMachine = 1 WHERE name = 'Leg Press';
UPDATE workouts SET needsBarbell = 1 WHERE name = 'Romanian Deadlifts';
UPDATE workouts SET needsMachine = 1 WHERE name = 'Leg Curls';
UPDATE workouts SET needsBarbell = 1 WHERE name = 'Overhead Press (Barbell or Dumbbell)';
UPDATE workouts SET needsDumbbell = 1 WHERE name = 'Overhead Press (Barbell or Dumbbell)';
UPDATE workouts SET needsDumbbell = 1 WHERE name = 'Lateral Raises';
UPDATE workouts SET needsDumbbell = 1 WHERE name = 'Front Raises';
UPDATE workouts SET needsBarbell = 1 WHERE name = 'Upright Rows';
UPDATE workouts SET needsDumbbell = 1 WHERE name = 'Arnold Press';
UPDATE workouts SET needsCable = 1 WHERE name = 'Face Pulls';
UPDATE workouts SET needsBarbell = 1 WHERE name = 'Barbell or Dumbbell Bicep Curl';
UPDATE workouts SET needsDumbbell = 1 WHERE name = 'Barbell or Dumbbell Bicep Curl';
UPDATE workouts SET needsDumbbell = 1 WHERE name = 'Hammer Curls';
UPDATE workouts SET needsDumbbell = 1 WHERE name = 'Preacher Curls';
UPDATE workouts SET needsDumbbell = 1 WHERE name = 'Concentration Curls';
UPDATE workouts SET needsBarbell = 1 WHERE name = 'Skullcrushers (lying tricep extension)';
UPDATE workouts SET needsDumbbell = 1 WHERE name = 'Tricep Kickbacks';
UPDATE workouts SET needsCable = 1 WHERE name = 'Cable Tricep Pushdowns';
UPDATE workouts SET needsDumbbell = 1 WHERE name = 'Overhead Tricep Extension';

-- Add flag indicating "push/pull/legs/core" for each workout.
ALTER TABLE workouts ADD COLUMN split TEXT DEFAULT NULL;

-- Update statements for the split column
UPDATE workouts SET split = 'push' WHERE name IN ('Barbell Bench Press', 'Incline Bench Press', 'Dumbbell Flyes', 'Push-ups', 'Cable Chest Press', 'Chest Dips', 'Overhead Press (Barbell or Dumbbell)', 'Lateral Raises', 'Front Raises', 'Arnold Press', 'Tricep Dips', 'Skullcrushers (lying tricep extension)', 'Tricep Kickbacks', 'Cable Tricep Pushdowns', 'Overhead Tricep Extension');

UPDATE workouts SET split = 'pull' WHERE name IN ('Deadlift', 'Pull-ups/Chin-ups', 'Bent-over Rows (Barbell or Dumbbell)', 'T-Bar Rows', 'Lat Pulldowns', 'Seated Cable Rows', 'Upright Rows', 'Face Pulls', 'Barbell or Dumbbell Bicep Curl', 'Hammer Curls', 'Preacher Curls', 'Concentration Curls');

UPDATE workouts SET split = 'legs' WHERE name IN ('Squats', 'Lunges (Walking or Stationary)', 'Leg Press', 'Romanian Deadlifts', 'Leg Curls', 'Calf Raises');

UPDATE workouts SET split = 'core' WHERE name IN ('Plank', 'Russian Twists', 'Bicycle Crunches', 'Leg Raises', 'Mountain Climbers', 'Woodchoppers');
