import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import { motion } from "framer-motion";
import styles from "./ExercisePage.module.css";

const fetchExerciseData = async (muscle) => {
  try {
    console.log("Fetching exercise data for:", muscle);
    const response = await fetch(`http://localhost:8080/muscles/${muscle}`);
    const data = await response.json();
    return data;
  } catch (error) {
    console.error("Error fetching exercise data:", error);
    return [];
  }
};

const ExercisePage = () => {
  const { muscle } = useParams();
  const [exercises, setExercises] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const getExercises = async () => {
      setLoading(true);
      const data = await fetchExerciseData(muscle);
      setExercises(data);
      setLoading(false);
    };
    getExercises();
  }, [muscle]);

  return (
    <motion.div
      className={styles["exercise-body"]}
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      transition={{ duration: 0.5 }}
    >
      <header className={styles["exercise-header"]}>
        <h1>{muscle.charAt(0).toUpperCase() + muscle.slice(1)} Exercises</h1>
      </header>
      <main className={styles["exercise-main"]}>
        {loading ? (
          <div className="loading-spinner"></div>
        ) : exercises.length > 0 ? (
          exercises.map((exercise, index) => (
            <motion.section
              key={exercise.id}
              className={styles["exercise-content-container"]}
              initial={{ opacity: 0, y: 20 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ delay: index * 0.1, duration: 0.4 }}
            >
              <div className={styles["exercise-video-container"]}>
                <iframe
                  src={exercise.video.replace("watch?v=", "embed/")}
                  title={exercise.name}
                  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                  referrerPolicy="strict-origin-when-cross-origin"
                  allowFullScreen
                ></iframe>
              </div>
              <div className={styles["exercise-description-container"]}>
                <h2>{exercise.name}</h2>
                <p>{exercise.description}</p>
                <ul className={styles["exercise-bullet-points"]}>
                  <li>
                    <span>Intensity:</span> {exercise.intensity}
                  </li>
                  <li>
                    <span>Equipment:</span>
                    {[
                      exercise.needsDumbbell && "Dumbbell",
                      exercise.needsBarbell && "Barbell",
                      exercise.needsMachine && "Machine",
                      exercise.needsCable && "Cable",
                    ]
                      .filter(Boolean)
                      .join(", ") || "None"}
                  </li>
                </ul>
              </div>
            </motion.section>
          ))
        ) : (
          <p className={styles["no-exercises"]}>
            No exercises found for this muscle group.
          </p>
        )}
      </main>
    </motion.div>
  );
};

export default ExercisePage;
