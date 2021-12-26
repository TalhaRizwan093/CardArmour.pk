import { Col, Row } from "react-bootstrap";
import { Button } from "primereact/button";
import { Card } from "primereact/card";
import { InputTextarea } from "primereact/inputtextarea";
import React, { useState } from "react";
import "./Feedback.css";
import { useNavigate } from "react-router-dom";
import {addResponse, getFeedback, getFeedbackByFeedbackId, addReply,getAdminID } from "../api/authenticationService";

const Feedback = () => {
  const [detail, setDetail] = useState("");
  const [response_, setResponse] = useState("");
  const navigate = useNavigate();

  const getToken = () => {
    return localStorage.getItem("USER_KEY");
  };

  const getID = () => {
    return localStorage.getItem("USER_ID");
  };

  const getFeedbackId = () => {
    return localStorage.getItem("FEEDBACK_ID");
  };
  const getFeedbackCustomerId = () => {
    return localStorage.getItem("FEEDBACK_CUSTOMER_ID");
  };

  const getFeedbackUsername = () => {
    return localStorage.getItem("USERNAME");
  };

  const getDetails = () => {
    return localStorage.getItem("DETAILS");
  };


  let username = getToken();
  let feedbackid;
  React.useEffect(() => {
    username = getToken();
    if (username === "undefined" || username === null) {
      navigate("/");
    }
    setDetail(getDetails());
    //let customerUsername = getFeedbackUsername();
    // getFeedback(customerUsername).then((response) => {
    //   console.log("feedback ", response)
    //   //setDetail(response.data.detail)
    // })
  }, []);
  
  const handleCancel = (e) => {
    e.preventDefault();
    navigate("/homepage");
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    const username = getFeedbackUsername();
    const response = response_;
    const details = getDetails();
    const feedback = {details,response}
    const data = {username, feedback}
    console.log(data)
    addResponse(data).then((response) => {
      navigate('/homepage')
    })
    // getAdminID(userid).then((response) => {
    //   console.log(response)
    //   adminid = response.data
    //   const data = {adminid,comment,date,feedbackid}
    //   console.log("reply",data)
    //   addReply(data).then((response) => {
    //     navigate('/homepage')
    //   })
    // })
    

  };

  return (
    <div
      style={{
        backgroundImage: "url(background.jpg)",
        position: "fixed",
        width: "100%",
        height: "100%",
        top: "0px",
        left: "0px",
        zIndex: "1000",
      }}
    >
      <div>
        <Row>
          <br></br>
        </Row>
        <Row>
          <h1 className="nameFeedback">CardArmour.pk</h1>
        </Row>
        <Row>
          <Col md={3}></Col>
          <Col md={6}>
            <Card
              style={{
                backgroundColor: "rgb(238, 252, 255)",
                borderRadius: "4%",
                marginTop: "10%",
                marginLeft: "20%",
                marginRight: "20%",
              }}
            >
              <h3 className="feedback">Feedback</h3>
              <Row>
                <Col md={2}></Col>
                <Col md={8}>
                  <div style={{ marginLeft: "5%", marginTop: "10%" }}>
                    <h5 style={{ textAlign: "center" }}>User Feedback</h5>
                    <InputTextarea value={detail} rows={6} cols={40} disabled />
                    <h5 style={{ textAlign: "center" }}>Enter your reply:</h5>
                    <InputTextarea
                      value={response_}
                      onChange={(e) => setResponse(e.target.value)}
                      rows={10}
                      cols={40}
                      autoResize
                    />
                  </div>
                </Col>
                <Col md={2}></Col>
              </Row>
              <Button
                onClick={handleSubmit}
                label="Submit"
                className="p-button-rounded p-button-outlined"
                style={{
                  marginLeft: "35%",
                  marginTop: "10%",
                  marginBottom: "5%",
                }}
              />
              <Button
                onClick={handleCancel}
                label="Cancel"
                className="p-button-rounded p-button-outlined"
                style={{ color: "red", marginLeft: "5%", marginBottom: "5%" }}
              />
            </Card>
          </Col>
          <Col md={3}></Col>
        </Row>
      </div>
    </div>
  );
};

export default Feedback;
