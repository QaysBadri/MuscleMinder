import "./App.css";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import NavBar from "./components/NavBar";
import HomePage from "./pages/HomePage";
function App() {
  return (
    <BrowserRouter>
      <div className="App">
        <NavBar />
        <div id="page-body">
          <Routes>
            <Route path="/" element={<HomePage />} />
            {/*
            <Route path="*" element={<NotFoundPage />} />
  */}
          </Routes>
        </div>
      </div>
    </BrowserRouter>
  );
}

export default App;