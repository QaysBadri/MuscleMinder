import React, { useState } from 'react';
import Model from 'react-body-highlighter';

import '../App.css';  

function HomePage() {
    //States 
    //States are formatted as follows: const [stateName, setStateName] = useState(initialValue);
    //call setStateName to update the state
    const [tooltip, setTooltip] = useState("");
    const [tooltipVisible, setTooltipVisible] = useState(false);
    const [selectedExercise, setSelectedExercise] = useState("");
    
    /* Testing data, to be replaced with actual data in later steps. Notice how the muscle groups listed
    in the muscles array are the highlighted muscles. The library does this for us. */
    const data = [
        {
          name: "Bench Press",
          muscles: ["chest", "triceps", "front-deltoids"]
        },
        {
          name: "Tricep Pushdown",
          muscles: ["triceps"]
        }
    ];

    //event handlers, these functions are called when the user interacts with the model
    //event handles are formatted as follows: const handleEventName = (event) => {function body}
    const handleMouseClick = (muscleData) => {
        setTooltip(`Muscle: ${muscleData.muscle}`);
        setTooltipVisible(true);
    };

    const handleDropdownChange = (event) => {
        setSelectedExercise(event.target.value);
    };    

    const selectedExerciseData = data.find(exercise => exercise.name === selectedExercise);

    //return statement, gives the component structure, in an HTML like format
    return (
        <div>
            <h1>Hi Team</h1>
            <p>This is our home page where the muscle groups will be shown.</p>
            <select value={selectedExercise} onChange={handleDropdownChange} className="ExerciseDropdown">
                <option value="">Select an Exercise</option>
                {data.map((exercise, index) => (
                    <option key={index} value={exercise.name}>{exercise.name}</option>
                ))}
            </select>
            <div class="ModelContainer">
            <Model
                //data for highlighting
                data={data}
                //send the muscle name data to the handleMouseClick function
                onClick={handleMouseClick} 
            />
            <Model
            type="posterior"
            //data for highlighting
            data={data}
            //send the muscle name data to the handleMouseClick function
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
