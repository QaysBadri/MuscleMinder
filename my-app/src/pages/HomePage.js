import React, { useState, useEffect, useRef } from "react";
import Model from "react-body-highlighter";
import Select from "react-select";
import { useNavigate } from "react-router-dom";
import "../App.css";

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
  const bottomRef = useRef(null);
  const [tooltip, setTooltip] = useState("");
  const [tooltipVisible, setTooltipVisible] = useState(false);
  const [selectedExercises, setSelectedExercises] = useState([]);
  const [selectedEquipment, setSelectedEquipment] = useState([]);
  const [exerciseOptions, setExerciseOptions] = useState([]);
  const [muscleGroupCounts, setMuscleGroupCounts] = useState({});
  const [feedback, setFeedback] = useState("");
  const [allExercises, setAllExercises] = useState([]);
  const navigate = useNavigate();

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch('http://localhost:8080/workouts');
        const data = await response.json();
        // Transform the backend data to include equipment and muscles properties
        const transformedData = data.map(exercise => {
          const equipment = [];
          if (exercise.needsDumbbell) equipment.push("Dumbbells");
          if (exercise.needsBarbell) equipment.push("Barbell");
          if (exercise.needsMachine) equipment.push("Machine");
          if (exercise.needsCable) equipment.push("Cable");

          // If no specific equipment is needed, it can show up for any equipment
          if (equipment.length === 0) {
            equipment.push("Dumbbells", "Barbell", "Machine", "Cable");
          }

          const muscles = exercise.description.match(/Muscles Targeted: (.*)/)[1].split(',').map(m => m.trim());

          return { ...exercise, equipment, muscles };
        });
        setAllExercises(transformedData);
      } catch (error) {
        console.error('Error fetching workouts:', error);
      }
    };

    fetchData();
  }, []);

  useEffect(() => {
    const filteredExercises = allExercises.filter(
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
  }, [selectedEquipment, allExercises]);

  useEffect(() => {
    const counts = muscleGroups.reduce(
      (acc, group) => ({ ...acc, [group]: 0 }),
      {}
    );
    selectedExercises.forEach((exercise) => {
      const exerciseData = allExercises.find((e) => e.name === exercise.value);
      if (exerciseData && exerciseData.muscles) {
        exerciseData.muscles.forEach((muscle) => {
          if (counts[muscle] !== undefined) {
            counts[muscle]++;
          }
        });
      }
    });
    setMuscleGroupCounts(counts);
  }, [selectedExercises, allExercises]);

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

  const scrollToBottom = () => {
    bottomRef.current.scrollIntoView({ behavior: 'smooth' });
  };

  const recommendWorkouts = (group) => {
    const recommendations = allExercises.filter((exercise) =>
      exercise.muscles.includes(group) &&
      (selectedEquipment.length === 0 || selectedEquipment.some((equip) => exercise.equipment.includes(equip)))
    );
    return recommendations.slice(0, 2); // Recommend up to 2 exercises
  };

  const evaluateWorkout = () => {
    const feedbackMessages = muscleGroups.map((group) => {
      const count = muscleGroupCounts[group];
      if (count === 0) {
        const recommendations = recommendWorkouts(group);
        return {
          group,
          message: "Not targeted at all.",
          recommendations: recommendations.length > 0 ? recommendations.map(r => r.name).join(', ') : 'No recommendations available'
        };
      } else if (count === 1) {
        const recommendations = recommendWorkouts(group);
        return {
          group,
          message: "Insufficiently targeted.",
          recommendations: recommendations.length > 0 ? recommendations.map(r => r.name).join(', ') : 'No recommendations available'
        };
      } else {
        return { group, message: "Adequately targeted." };
      }
    });
    setFeedback(feedbackMessages);
    scrollToBottom();
  };

  let filteredExercises;
  if (selectedExercises.length > 0) {
    filteredExercises = allExercises.filter((exercise) =>
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

      <button className="button-23" onClick={evaluateWorkout}>Improve Workout</button>

      {feedback && (
        <div className="Feedback">
          <h2>Workout Evaluation</h2>
          <table>
            <tbody>
              {feedback.map((item, index) => (
                <tr key={index}>
                  <td>{item.group}:</td>
                  <td>{item.message}</td>
                  {item.recommendations && (
                    <td>Recommendations: {item.recommendations}</td>
                  )}
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}
      <div ref={bottomRef}></div>
    </div>
  );
}

export default HomePage;
