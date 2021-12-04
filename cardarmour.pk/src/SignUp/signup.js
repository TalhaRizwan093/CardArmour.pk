import React, { useState } from "react";
import { InputText } from "primereact/inputtext";
import { Button } from "primereact/button";
import { Checkbox } from "primereact/checkbox";
import { RadioButton } from "primereact/radiobutton";
import { Dropdown } from "primereact/dropdown";
import { InputTextarea } from "primereact/inputtextarea";
import { Card } from "primereact/card";
import { Calendar } from "primereact/calendar";
import "./signup.css";
import { Container, Row, Col, Form } from "react-bootstrap";


const SignUp = () => {
  const [date1, setDate1] = useState(null);
  return (
    <div
      style={{
        backgroundImage: "url(background.jpg)",
        height: "100vh",
      }}
    >
      <Row>
        <br></br>
      </Row>
      <Row>
        <h1 className="name_signup">CardArmour.pk</h1>
      </Row>
      <Row>
        <Col xs={2}>
          <Card
            style={{
              borderRadius: "20px",
              marginLeft: "20%",
              marginTop: "30%",
              backgroundColor: "white",
            }}
          >
            <p style={{ textAlign: "center", fontStyle: "italic" }}>
              Did you know?
            </p>
            <img
              src="thief.jpg"
              width="100px"
              height="100px"
              style={{ marginLeft: "25%" }}
            ></img>
            <p style={{ textAlign: "center", marginTop: "12%" }}>
              Information of more than 100 Million Credit and Debit card users
              has been stolen and released on the dark web just in the 1st week
              of 2021!{" "}
            </p>
            <a
              href="https://gadgets.ndtv.com/internet/news/juspay-credit-debit-cardholders-data-leak-india-100-million-impact-dark-web-2347184"
              target="_blank"
              style={{ marginLeft: "28%", color: "black" }}
            >
              Learn More
            </a>
          </Card>
        </Col>
        <Col xs={10}>
          <Card
            style={{
              borderRadius: "3%",
              marginTop: "3%",
              marginLeft: "5.5%",
              marginRight: "25%",
              backgroundColor: "rgb(238, 252, 255)",
            }}
          >
            <Row>
              <Col md={9}>
                <div className="SignUpTag">Sign Up</div>
              </Col>
              <Col md={3}>
                <Button
                  icon="pi pi-times"
                  className="p-button-rounded p-button-danger p-button-text"
                  style={{
                    marginLeft: "78%",
                    marginBottom: "6%",
                    marginTop: "-5%",
                  }}
                />
              </Col>
            </Row>

            <div className="p-fluid p-formgrid p-grid">
              <div className="p-field p-col-12 p-md-6">
                <label htmlFor="firstname" style={{ marginLeft: "48%" }}>
                  Firstname
                </label>
                <InputText id="firstname" type="text" placeholder="e.g. John" />
              </div>
              <div className="p-field p-col-12 p-md-6">
                <label htmlFor="lastname" style={{ marginLeft: "48%" }}>
                  Lastname
                </label>
                <InputText id="lastname" type="text" placeholder="e.g. Wich" />
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
                <InputText
                  id="cnic"
                  type="text"
                  placeholder="XXXXX-XXXXXXX-X"
                />
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
                <InputText
                  id="phonenumebr"
                  type="text"
                  placeholder="XXXX-XXXXXXX"
                />
              </div>
              <div className="p-field p-col-6">
                <label htmlFor="email" style={{ marginLeft: "44%" }}>
                  Email
                </label>
                <InputText
                  id="email"
                  type="text"
                  placeholder="e.g. example@email.com"
                />
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
              label="Sign Up"
              className="p-button-outlined p-button-info"
              style={{
                marginLeft: "36.5%",
                marginTop: "2%",
                marginBottom: "5%",
              }}
            />
            <Button
              label="Cancel"
              className="p-button-outlined p-button-danger"
              style={{ marginLeft: "10%", marginBottom: "5%" }}
            />
          </Card>
        </Col>
      </Row>
    </div>
  );
};

export default SignUp;
