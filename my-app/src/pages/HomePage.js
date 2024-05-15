import React, { useState, useEffect } from 'react';
import Model from 'react-body-highlighter';
import Select from 'react-select';
import { useNavigate } from 'react-router-dom';
import '../App.css';  
import data from './data.js';

// Define the options for equipment filtering
const equipmentOptions = [
    { value: 'Dumbbells', label: 'Dumbbells' },
    { value: 'Cable', label: 'Cable' },
    { value: 'Barbell', label: 'Barbell' },
    { value: 'Machine', label: 'Machine' }
];

function HomePage() {
    //States 
    //States are formatted as follows: const [stateName, setStateName] = useState(initialValue);
    //call setStateName to update the state
    const [tooltip, setTooltip] = useState("");
    const [tooltipVisible, setTooltipVisible] = useState(false);
    const [selectedExercises, setSelectedExercises] = useState([]);
    const [selectedEquipment, setSelectedEquipment] = useState([]);
    const [exerciseOptions, setExerciseOptions] = useState([]);
    const navigate = useNavigate();

    /* Testing data, to be replaced with actual data in later steps. Notice how the muscle groups listed
    in the muscles array are the highlighted muscles. The library does this for us. */

    // Effect to update exercise options based on selected equipment
    useEffect(() => {
        const filteredExercises = data.filter(exercise =>
            selectedEquipment.length === 0 || selectedEquipment.some(equip => exercise.equipment.includes(equip))
        );
        setExerciseOptions(filteredExercises.map(exercise => ({ value: exercise.name, label: exercise.name })));
    }, [selectedEquipment]);

    //event handlers, these functions are called when the user interacts with the model
    //event handles are formatted as follows: const handleEventName = (event) => {function body}
    // Handle mouse click on model
    // Find selected exercise data
    const handleMouseClick = (muscleData) => {
        setTooltip(`Muscle: ${muscleData.muscle}`);
        setTooltipVisible(true);
        navigate('/exercise');
    };

    // Handles changes in the dropdown selection for exercises
    const handleDropdownChange = (selectedOptions) => {
        setSelectedExercises(selectedOptions);
    };

    // Handles changes in the dropdown selection for equipment
    const handleEquipmentChange = (selectedOptions) => {
        setSelectedEquipment(selectedOptions.map(option => option.value));
        setSelectedExercises([]); // Clear selected exercises when equipment changes
    };

    // Filter exercises based on the selected options in dropdown
    let filteredExercises;
    if (selectedExercises.length > 0) {
        filteredExercises = data.filter(exercise =>
            selectedExercises.map(option => option.value).includes(exercise.name)
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
