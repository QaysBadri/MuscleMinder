import React, { useState } from 'react';
import Model from 'react-body-highlighter';

import '../App.css';  

function HomePage() {
    //States 
    //States are formatted as follows: const [stateName, setStateName] = useState(initialValue);
    //call setStateName to update the state
    const [tooltip, setTooltip] = useState("");
    const [tooltipVisible, setTooltipVisible] = useState(false);
    
    //================================================================================================

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
    //================================================================================================

    //event handlers, these functions are called when the user interacts with the model
    //event handles are formatted as follows: const handleEventName = (event) => {function body}
    const handleMouseClick = (muscleData) => {
        setTooltip(`Muscle: ${muscleData.muscle}`);
        setTooltipVisible(true);

    };


    //================================================================================================

    //return statement, gives the component structure, in an HTML like format
    return (
        <div>
            <h1>Hi Team</h1>
            <p>This is our home page where the muscle groups will be shown.</p>
            <div class="ModelContainer">
            <Model
                data={data}
                onClick={handleMouseClick} 
                onMouseOver={handleMouseClick}
            />
            <Model
            type="posterior"
            data={data}
            onClick={handleMouseClick} 
            onMouseOver={handleMouseClick}
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
