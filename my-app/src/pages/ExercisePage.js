import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';
import styles from './ExercisePage.module.css';

// Function to fetch exercise data for a given muscle
const fetchExerciseData = async (muscle) => {
  try {
    // Log the muscle name
    console.log('Fetching exercise data for:', muscle);
    const response = await fetch(`http://localhost:8080/muscles/${muscle}`);
    const data = await response.json();
    return data;
  } catch (error) {
    console.error('Error fetching exercise data:', error);
    return [];
  }
};

const ExercisePage = () => {
  const { muscle } = useParams(); 
  const [exercises, setExercises] = useState([]);

  useEffect(() => {
    const getExercises = async () => { 
      const data = await fetchExerciseData(muscle);
      setExercises(data);
    };
    getExercises();
  }, [muscle]);

  return (
    <div className={styles['exercise-body']}>
      <header className={styles['exercise-header']}>
        <h1>{muscle.charAt(0).toUpperCase() + muscle.slice(1)} Exercises</h1>
      </header>
      <main className={styles['exercise-main']}>
        {exercises.map((exercise) => (
          <section key={exercise.id} className={styles['exercise-content-container']}>
            <div className={styles['exercise-video-container']}>
              <iframe
                src={exercise.video.replace('watch?v=', 'embed/')}
                title={exercise.name}
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                referrerPolicy="strict-origin-when-cross-origin"
                allowFullScreen
              ></iframe>
            </div>
            <div className={styles['exercise-description-container']}>
              <h2>{exercise.name}</h2>
              <p>{exercise.description}</p>
              <ul className={styles['exercise-details']}>
                <li>Intensity: {exercise.intensity}</li>
                <li>Needs Dumbbell: {exercise.needsDumbbell ? 'Yes' : 'No'}</li>
                <li>Needs Barbell: {exercise.needsBarbell ? 'Yes' : 'No'}</li>
                <li>Needs Machine: {exercise.needsMachine ? 'Yes' : 'No'}</li>
                <li>Needs Cable: {exercise.needsCable ? 'Yes' : 'No'}</li>
              </ul>
            </div>
          </section>
        ))}
      </main>
    </div>
  );
};

export default ExercisePage;
