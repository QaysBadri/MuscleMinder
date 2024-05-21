import "./App.css";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import NavBar from "./components/NavBar";
import HomePage from "./pages/HomePage";
import ExercisePage from "./pages/ExercisePage";
import { useState } from "react";
import React from "react";
import Model, { IExerciseData, IMuscleStats } from "react-body-highlighter";

import "./index.css";

//This is the main component of the application, if you want to work on the body model, you will need to work on the HomePage component
function App() {
  return (
    <BrowserRouter>
      <div className="App">
        <NavBar />
        <div id="page-body">
          <Routes>
            <Route path="/" element={<HomePage />} />
            <Route path="/exercise/:muscle" element={<ExercisePage />} />
            {/* Add additional routes here if needed */}
          </Routes>
        </div>
      </div>
    </BrowserRouter>
  );
}

export default App;
