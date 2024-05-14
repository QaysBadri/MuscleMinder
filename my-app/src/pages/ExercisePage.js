import React from 'react';
import styles from './ExercisePage.module.css';

const ExercisePage = () => {
  return (
    <div className={styles['exercise-body']}>
      <header className={styles['exercise-header']}>
        <h1>Bench Press</h1>
      </header>
      <main className={styles['exercise-main']}>
        <section className={styles['exercise-content-container']}>
          <div className={styles['exercise-video-container']}>
            <iframe
              src="https://www.youtube.com/embed/xZTkjWoFsok?si=04O1muy8qaIMPZ7P"
              title="YouTube video player"
              allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
              referrerPolicy="strict-origin-when-cross-origin"
              allowFullScreen
            ></iframe>
          </div>
          <div className={styles['exercise-image-container']}>
            <img src="/bench.jpg" alt="Bench Press" />
          </div>
        </section>
        <ul className={styles['exercise-bullet-points']}>
          <li>Point One</li>
          <li>Point Two</li>
          <li>Point Three</li>
        </ul>
      </main>
    </div>
  );
};

export default ExercisePage;
