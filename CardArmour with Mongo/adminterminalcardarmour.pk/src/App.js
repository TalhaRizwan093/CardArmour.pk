import "./App.css";
import LoginForm from "./Login/login";

import "primereact/resources/themes/saga-blue/theme.css";
import "primereact/resources/primereact.min.css";
import "primeicons/primeicons.css";
import "primeflex/primeflex.css";
import Homepage from "./Homepage/homepage";
import Feedback from "./UserFeedback/Feedback";
import FlaggedAccount from "./FlaggedAccounts/flaggedaccount";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";

function App() {
  return (
    <Router>
      <Routes>
        <Route exact path="/" element={<LoginForm />}></Route>
        <Route path="/Homepage" element={<Homepage />}></Route>
        <Route path="/Feedback" element={<Feedback />}></Route>
        <Route path="/FlaggedAccount" element={<FlaggedAccount />}></Route>
      </Routes>
    </Router>
  );
}

export default App;
