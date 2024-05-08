import React, { useState } from 'react';
import Model from 'react-body-highlighter';


import Select from 'react-select';

import '../App.css';  
import data from './data.js';

function HomePage() {
    //States 
    //States are formatted as follows: const [stateName, setStateName] = useState(initialValue);
    //call setStateName to update the state
    const [tooltip, setTooltip] = useState("");
    const [tooltipVisible, setTooltipVisible] = useState(false);
    const [selectedExercises, setSelectedExercises] = useState([]);
    
    /* Testing data, to be replaced with actual data in later steps. Notice how the muscle groups listed
    in the muscles array are the highlighted muscles. The library does this for us. */


    //event handlers, these functions are called when the user interacts with the model
    //event handles are formatted as follows: const handleEventName = (event) => {function body}
    // Handle mouse click on model
  // Find selected exercise data

  const handleMouseClick = (muscleData) => {
    setTooltip(`Muscle: ${muscleData.muscle}`);
    setTooltipVisible(true);
};

// Handles changes in the dropdown selection
const handleDropdownChange = (selectedOptions) => {
    setSelectedExercises(selectedOptions);
};




// Filter exercises based on the selected options in dropdown
let filteredExercises;
if (selectedExercises.length > 0) {
    filteredExercises = data.filter(exercise => selectedExercises.map(option => option.value).includes(exercise.name));
} else {
    filteredExercises = [];
}


return (
    <div>
        <h1>Hi Team</h1>
        <p>This is our home page where the muscle groups will be shown.</p>

        <Select
            isMulti
            name="Workouts"
            options={data.map((exercise) => ({ value: exercise.name, label: exercise.name }))}
            className="basic-multi-select"
            classNamePrefix="select"
            onChange={handleDropdownChange}
            value={selectedExercises}
        />

        <div className="ModelContainer">
            <Model
                data={filteredExercises}
                onClick={handleMouseClick}
            />
            <Model
                type="posterior"
                data={filteredExercises}
                onClick={handleMouseClick}
            />
        </div>

        {tooltipVisible && (
            <div className="Tooltip" style={{ position: 'absolute', left: '50%', top: '10%' }}>
                {tooltip}
            </div>
        )}
    </div>
);
}

export default HomePage;