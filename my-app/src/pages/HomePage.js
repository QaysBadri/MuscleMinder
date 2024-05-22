import React, { useState, useEffect } from "react";
import Model from "react-body-highlighter";
import Select from "react-select";
import { useNavigate } from "react-router-dom";
import "../App.css";
import data from "./data.js";

// Define the options for equipment filtering
const equipmentOptions = [
  { value: "Dumbbells", label: "Dumbbells" },
  { value: "Cable", label: "Cable" },
  { value: "Barbell", label: "Barbell" },
  { value: "Machine", label: "Machine" },
];

// Define the muscle groups
const muscleGroups = [
  "calves",
  "hamstring",
  "quadriceps",
  "abs",
  "forearms",
  "chest",
  "front-deltoids",
  "upper-back",
  "biceps",
  "triceps",
  "lower-back",
  "gluteal",
  "back-deltoids",
  "trapezius",
  "obliques",
];

function HomePage() {
  const [tooltip, setTooltip] = useState("");
  const [tooltipVisible, setTooltipVisible] = useState(false);
  const [selectedExercises, setSelectedExercises] = useState([]);
  const [selectedEquipment, setSelectedEquipment] = useState([]);
  const [exerciseOptions, setExerciseOptions] = useState([]);
  const [muscleGroupCounts, setMuscleGroupCounts] = useState({});
  const [feedback, setFeedback] = useState("");
  const navigate = useNavigate();

  useEffect(() => {
    const filteredExercises = data.filter(
      (exercise) =>
        selectedEquipment.length === 0 ||
        selectedEquipment.some((equip) => exercise.equipment.includes(equip))
    );
    setExerciseOptions(
      filteredExercises.map((exercise) => ({
        value: exercise.name,
        label: exercise.name,
      }))
    );
  }, [selectedEquipment]);

  useEffect(() => {
    const counts = muscleGroups.reduce(
      (acc, group) => ({ ...acc, [group]: 0 }),
      {}
    );
    selectedExercises.forEach((exercise) => {
      const exerciseData = data.find((e) => e.name === exercise.value);
      exerciseData.muscles.forEach((muscle) => {
        if (counts[muscle] !== undefined) {
          counts[muscle]++;
        }
      });
    });
    setMuscleGroupCounts(counts);
  }, [selectedExercises]);

  const handleMouseClick = (muscleData) => {
    setTooltip(`Muscle: ${muscleData.muscle}`);
    setTooltipVisible(true);
    navigate(`/exercise/${muscleData.muscle}`);
  };

  const handleDropdownChange = (selectedOptions) => {
    setSelectedExercises(selectedOptions);
  };

  const handleEquipmentChange = (selectedOptions) => {
    setSelectedEquipment(selectedOptions.map((option) => option.value));
    setSelectedExercises([]); // Clear selected exercises when equipment changes
  };

  const evaluateWorkout = () => {
    const feedbackMessages = muscleGroups.map((group) => {
      const count = muscleGroupCounts[group];
      if (count === 0) {
        return { group, message: "Not targeted at all." };
      } else if (count === 1) {
        return { group, message: "Insufficiently targeted." };
      } else {
        return { group, message: "Adequately targeted." };
      }
    });
    setFeedback(feedbackMessages);
  };

  let filteredExercises;
  if (selectedExercises.length > 0) {
    filteredExercises = data.filter((exercise) =>
      selectedExercises.map((option) => option.value).includes(exercise.name)
    );
  } else {
    filteredExercises = [];
  }

  return (
    <div>
      <h1>Hi Team</h1>
      <p>This is our home page where the muscle groups will be shown.</p>

      <Select
        isMulti
        name="Equipment"
        options={equipmentOptions}
        className="basic-multi-select"
        classNamePrefix="select"
        onChange={handleEquipmentChange}
        placeholder="Select your equipment"
      />

      <Select
        isMulti
        name="Workouts"
        options={exerciseOptions}
        className="basic-multi-select"
        classNamePrefix="select"
        onChange={handleDropdownChange}
        value={selectedExercises}
        placeholder="Select exercises"
        isDisabled={selectedEquipment.length === 0}
      />

      <div className="ModelContainer">
        <Model data={filteredExercises} onClick={handleMouseClick} />
        <Model
          type="posterior"
          data={filteredExercises}
          onClick={handleMouseClick}
        />
      </div>

      {tooltipVisible && (
        <div
          className="Tooltip"
          style={{ position: "absolute", left: "50%", top: "10%" }}
        >
          {tooltip}
        </div>
      )}

      <button onClick={evaluateWorkout}>Improve Your Workout</button>

      {feedback && (
        <div className="Feedback">
          <h2>Workout Evaluation</h2>
          <table>
            <tbody>
              {feedback.map((item, index) => (
                <tr key={index}>
                  <td>{item.group}:</td>
                  <td>{item.message}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}
    </div>
  );
}

export default HomePage;
