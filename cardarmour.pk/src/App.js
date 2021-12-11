import "./App.css";
import LoginForm from "./Login/login";
import SignUp from "./SignUp/signup";
import "primereact/resources/themes/saga-blue/theme.css";
import "primereact/resources/primereact.min.css";
import "primeicons/primeicons.css";
import "primeflex/primeflex.css";
import Homepage from "./Homepage/homepage";
import Feedback from "./UserFeedback/Feedback";
import Aboutus from "./Aboutus/aboutus";
import CardHistory from "./CardHistory/cardhistory";
import PaymentMethod from "./PaymentMethod/paymentmethod";
import Setting from "./Setting/setting";
import SmsHistory from "./SmsHistory/smshistory";
import FeedbackHisotry from "./FeedbackHistory/feedbackhistory";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";

function App() {
  return (
    <Router>
      <Routes>
        <Route exact path="/" element={<LoginForm />}></Route>
        <Route path="/Signup" element={<SignUp />}></Route>
        <Route path="/Homepage" element={<Homepage />}></Route>
        <Route path="/Feedback" element={<Feedback />}></Route>
        <Route path="/aboutus" element={<Aboutus />}></Route>
        <Route path="/cardhistory" element={<CardHistory />}></Route>
        <Route path="/paymentmethod" element={<PaymentMethod />}></Route>
        <Route path="/setting" element={<Setting />}></Route>
        <Route path="/smshistory" element={<SmsHistory />}></Route>
        <Route path="/feedbackhistory" element={<FeedbackHisotry />}></Route>
      </Routes>
    </Router>
  );
}

export default App;
