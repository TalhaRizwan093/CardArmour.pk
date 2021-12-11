import { Container, Row, Col, Form } from "react-bootstrap";
import { Dropdown } from "primereact/dropdown";
import "./setting.css";
import { Button } from "primereact/button";
import { Calendar } from "primereact/calendar";
import { InputText } from "primereact/inputtext";
import React, { useState } from "react";
import { Password } from "primereact/password";
import { useNavigate } from "react-router-dom";

const Setting = () => {
  const [selectedLanguage, setLanguage] = useState(null);
  const [selectedTimeFormat, setTimeFormat] = useState(null);
  const [selectedMode, setMode] = useState(null);
  const [date1, setDate1] = useState(null);
  const [password, setPassword] = useState("");
  const [username, setUserName] = useState("");
  const navigate = useNavigate();

  const languages = [
    { language: "English", code: "EN" },
    { language: "日本", code: "JP" },
    { language: "中國人", code: "CN" },
    { language: "हिंदी", code: "HN" },
  ];
  const timeformat = [
    { language: "12 Hour", code: "12hr" },
    { language: "24 Hour", code: "24hr" },
  ];
  const mode = [
    { language: "Light", code: "light" },
    { language: "Dark", code: "dark" },
  ];

  const getToken = () => {
    return localStorage.getItem("USER_KEY");
  };

  let userName = getToken();

  React.useEffect(() => {
    userName = getToken();
    if (userName === "undefined" || userName === null) {
      navigate("/");
    }
  }, []);

  const handleReturnHome = (e) => {
    e.preventDefault();
    navigate("/homepage");
  };

  const handleCancel = (e) => {
    e.preventDefault();
    navigate("/homepage");
  };

  const onLanguageChange = (e) => {
    setLanguage(e.value);
  };
  const onFormatChange = (e) => {
    setTimeFormat(e.value);
  };
  const onModeChange = (e) => {
    setMode(e.value);
  };

  return (
    <div
      style={{
        backgroundImage: "url(settingbackground.jpg)",
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
          <Col md={2}>
            {" "}
            <Button
              onClick={handleReturnHome}
              label="Return Home"
              className="p-button-rounded p-button-warning"
              style={{ color: "black", marginLeft: "15%" }}
            />
          </Col>
          <Col md={10}>
            {" "}
            <h1 className="namesettingtag">CardArmour.pk</h1>
          </Col>
        </Row>
        <Row>
          <h3 className="namesetting" style={{ marginLeft: "47%" }}>
            Setting
          </h3>
        </Row>
        <Row>
          <Col md={4}>
            <div style={{ marginLeft: "88%", marginTop: "3%" }}>
              <p className="parasetting2">Language</p>
              <Dropdown
                inputId="languageInput"
                value={selectedLanguage}
                options={languages}
                onChange={onLanguageChange}
                placeholder="Select"
                optionLabel="language"
              />
            </div>
          </Col>
          <Col md={4}>
            <div style={{ marginLeft: "43%", marginTop: "3%" }}>
              <p className="parasetting1">Time Format</p>
              <Dropdown
                inputId="timeFormatInput"
                value={selectedTimeFormat}
                options={timeformat}
                onChange={onFormatChange}
                placeholder="Select"
                optionLabel="language"
              />
            </div>
          </Col>
          <Col md={4}>
            <div style={{ marginTop: "3%" }}>
              <p className="parasetting3">Mode</p>
              <Dropdown
                inputId="modeInput"
                value={selectedMode}
                options={mode}
                onChange={onModeChange}
                placeholder="Select"
                optionLabel="language"
              />
            </div>
          </Col>
        </Row>
        <Row>
          <Col md={2}></Col>
          <Col md={8}>
            <h5 style={{ marginLeft: "40%", marginTop: "2%" }}>
              Change Username/Password
            </h5>
            <span
              className="p-float-label"
              style={{
                marginLeft: "27.5%",
                marginBottom: "4%",
                marginTop: "3%",
              }}
            >
              <InputText
                id="username"
                value={username}
                onChange={(e) => setUserName(e.target.value)}
                style={{ width: "222px" }}
              />
              <label htmlFor="username">Username</label>
            </span>

            <span
              className="p-float-label"
              style={{
                marginLeft: "55%",
                marginTop: "-7.3%",
                marginBottom: "3%",
              }}
            >
              <Password
                className="p-float-label"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                feedback={false}
                toggleMask
              />
              <label htmlFor="Password">Password</label>
            </span>
          </Col>
          <Col md={2}></Col>
        </Row>
        <Row>
          <Col md={2}></Col>
          <Col md={8}>
            <h5 style={{ marginLeft: "43.5%" }}>Change User Data</h5>
            <div>
              <div className="p-fluid p-formgrid p-grid">
                <div className="p-field p-col-12 p-md-6">
                  <label htmlFor="firstname" style={{ marginLeft: "48%" }}>
                    Firstname
                  </label>
                  <InputText id="firstname" type="text" placeholder="" />
                </div>
                <div className="p-field p-col-12 p-md-6">
                  <label htmlFor="lastname" style={{ marginLeft: "48%" }}>
                    Lastname
                  </label>
                  <InputText id="lastname" type="text" placeholder="" />
                </div>
                <div
                  className="p-field p-col-12 p-md-3"
                  style={{ marginTop: "-0.7%" }}
                >
                  <label htmlFor="gender" style={{ marginLeft: "40%" }}>
                    Gender
                  </label>
                  <Dropdown
                    inputId="gender"
                    // value={selectedState}
                    // options={states}
                    // onChange={onStateChange}
                    placeholder="Select"
                    optionLabel="name"
                  />
                </div>
                <div className="p-field p-col-12 p-md-7">
                  <label
                    htmlFor="cnic"
                    style={{ marginLeft: "40%", marginTop: "1.5%" }}
                  >
                    CNIC
                  </label>
                  <InputText id="cnic" type="text" placeholder="" />
                </div>
                <div
                  className="p-field p-col-12 p-md-2"
                  style={{ marginTop: "0.1%" }}
                >
                  <label htmlFor="dob" style={{ marginLeft: "15%" }}>
                    Date of Birth
                  </label>
                  <Calendar
                    id="dob"
                    value={date1}
                    onChange={(e) => setDate1(e.value)}
                  />
                </div>
                <div className="p-field p-col-12 p-md-6">
                  <label htmlFor="number" style={{ marginLeft: "40%" }}>
                    Phone Number
                  </label>
                  <InputText id="phonenumebr" type="text" placeholder="" />
                </div>
                <div className="p-field p-col-6">
                  <label htmlFor="email" style={{ marginLeft: "44%" }}>
                    Email
                  </label>
                  <InputText id="email" type="text" placeholder="" />
                </div>
                <div className="p-field p-col-12 p-md-6">
                  <label htmlFor="country" style={{ marginLeft: "43%" }}>
                    Country
                  </label>
                  <Dropdown
                    inputId="state"
                    // value={selectedState}
                    // options={states}
                    // onChange={onStateChange}
                    placeholder="Select"
                    optionLabel="name"
                  />
                </div>
                <div className="p-field p-col-12 p-md-6">
                  <label htmlFor="city" style={{ marginLeft: "45%" }}>
                    City
                  </label>
                  <Dropdown
                    inputId="city"
                    // value={selectedState}
                    // options={states}
                    // onChange={onStateChange}
                    placeholder="Select"
                    optionLabel="name"
                  />
                </div>
              </div>
              <Button
                label="Confirm"
                className="p-button-raised p-button-success"
                style={{
                  marginLeft: "40%",
                  marginTop: "2%",
                  marginBottom: "5%",
                }}
              />
              <Button
                onClick={handleCancel}
                label="Cancel"
                className="p-button-raised p-button-danger"
                style={{ marginLeft: "6%", marginBottom: "5%" }}
              />
            </div>
          </Col>
          <Col md={2}></Col>
        </Row>
      </div>
    </div>
  );
};

export default Setting;
