import { motion } from "framer-motion";
import "../App.css";
import styles from "./AboutPage.module.css";

const AboutPage = () => {
  return (
    <motion.div
      className={styles["about-page-container"]}
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.6 }}
    >
      <h1 className={styles["about-title"]}>About Muscle Minder</h1>
      <motion.p
        className={styles["about-description"]}
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ delay: 0.3, duration: 0.6 }}
      >
        Muscle Minder is a personalized workout planner designed to help you
        build balanced and effective exercise routines. By interacting with our
        intuitive human body model, you can visualize which muscle groups are
        targeted by your selected exercises. Our intelligent feedback system
        then provides recommendations to ensure you're working all major muscle
        groups adequately.
      </motion.p>
      <motion.div
        className={styles["about-features"]}
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ delay: 0.6, duration: 0.6 }}
      >
        <h2>Key Features:</h2>
        <ul>
          <li>
            <span>Interactive Body Model:</span>
            <br />
            Select exercises and see the corresponding muscles highlighted on a
            human body diagram.
          </li>
          <li>
            <span>Personalized Workout Feedback:</span>
            <br />
            Get insights into muscle group coverage and receive suggestions for
            underdeveloped areas.
          </li>
          <li>
            <span>Exercise Database:</span>
            <br />
            Explore a curated list of exercises with descriptions, intensity
            levels, and equipment requirements.
          </li>
          <li>
            <span>Equipment Filtering:</span>
            <br />
            Easily find exercises that match the equipment you have available.
          </li>
        </ul>
      </motion.div>
      <motion.p
        className={styles["about-cta"]}
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ delay: 0.9, duration: 0.6 }}
      >
        Start building your smarter workout today!
      </motion.p>
    </motion.div>
  );
};

export default AboutPage;
