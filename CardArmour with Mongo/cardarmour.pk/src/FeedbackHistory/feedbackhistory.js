import "./feedbackhistory.css";
import { Col, Row } from "react-bootstrap";
import { Button } from "primereact/button";
import { useNavigate } from "react-router-dom";
import React, { useState } from "react";
import {  getAllReply, getFeedback } from "../api/authenticationService"

const Feedbackhistory = () => {
  const navigate = useNavigate();
  const [feedbacks, setFeedbacks] = useState([]);
  const [replies, setReplies] = useState([]);
  const [check, setCheck] = useState(true);
  // const [cid, setCustomerid] = useState("");

  const getToken = () => {
    return localStorage.getItem("USER_KEY");
  };
  const getCustomerId = () => {
    return localStorage.getItem("C_ID");
  };
  let username = getToken();

  React.useEffect(() => {
    username = getToken();
    const customerid = getCustomerId();
    if (username === "undefined" || username === null) {
      navigate("/");
    }
    getFeedback(username).then((response) => {
      setFeedbacks(response.data)
    })
    getAllReply().then((response) => {
      setReplies(response.data)
    })

  }, []);

  const checkReply = (v) => {
    console.log(v);
    let a;
    if (v.response === '') {
      return "Waiting for Admin Response..."
    }
    else{
      return v.response
    }
  }
  const handleReturnHome = (e) => {
    e.preventDefault();
    navigate("/homepage");
  };

  const handleReport = (e) => {
    e.preventDefault();
    navigate("/feedback");
  };

  return (
    <div
      style={{
        backgroundImage: "url(backgroundhome.jpg)",
        position: "fixed",
        width: "100%",
        height: "100%",
        top: "0px",
        left: "0px",
        zIndex: "1000",
      }}
    >
      <div>
        <br></br>
      </div>
      <Row>
        <Col md={2}>
          <Button
            onClick={handleReturnHome}
            label="Return Home"
            className="p-button-rounded p-button-outlined"
            style={{ color: "yellow", marginLeft: "15%" }}
          />
        </Col>
        <Col md={8}>
          <div>
            <h1 className="nameCard">CardArmour.pk</h1>
          </div>
        </Col>
        <Col md={2}>
          <Button
            onClick={handleReport}
            label="Report a Problem"
            className="p-button-raised p-button-danger"
            style={{ marginTop: "2%" }}
          />
        </Col>
      </Row>

      <div>
        <br></br>
        <h5 className="fh">Feedback History</h5>
      </div>
      <div
        style={{
          marginLeft: "24%",
          marginRight: "24%",
          marginTop: "2%",
        }}
      >
        <table className="customers">
          <tr
            style={{
              alignItems: "center",
            }}
          >
            <th style={{ textAlign: "center" }}>Your Feedback</th>
            <th style={{ textAlign: "center" }}>Admin Reply</th>
          </tr>
          <tbody>
            {feedbacks.map((feedback) => (
              <tr>
                {feedback.details && <td>{feedback.details}</td>}
                {feedback.details && <td>{checkReply(feedback)}</td>}
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default Feedbackhistory;
