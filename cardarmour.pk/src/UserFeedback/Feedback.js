import { Col, Row } from "react-bootstrap";
import { Button } from "primereact/button";
import { Card } from "primereact/card";
import { InputTextarea } from "primereact/inputtextarea";
import React, { useState } from "react";
import "./Feedback.css";
import { useNavigate } from "react-router-dom";
import { addFeedback } from "../api/authenticationService";

const Feedback = () => {
  const [detail, setDetail] = useState("");
  const navigate = useNavigate();

  const getToken = () => {
    return localStorage.getItem("USER_KEY");
  };

  const getCustomerId = () => {
    return localStorage.getItem("C_ID");
  };

  let username = getToken();

  React.useEffect(() => {
    username = getToken();
    if (username === "undefined" || username === null) {
      navigate("/");
    }
  }, []);

  const handleCancel = (e) => {
    e.preventDefault();
    navigate("/homepage");
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    const customerid = getCustomerId();
    const date = new Date();
    const data = {detail,customerid,date};
    addFeedback(data).then((response) => {
      alert("Feedback saved")
    })
    console.log(data)

  }

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
                    <h5 style={{ marginLeft: "14%" }}>
                      Please Explain in detail:
                    </h5>
                    <InputTextarea
                      value={detail}
                      onChange={(e) => setDetail(e.target.value)}
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
                  marginLeft: "33%",
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
