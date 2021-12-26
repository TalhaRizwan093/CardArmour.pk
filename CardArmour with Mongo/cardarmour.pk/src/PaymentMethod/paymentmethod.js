import React, { useState } from "react";
import { InputText } from "primereact/inputtext";
import { Button } from "primereact/button";
import { Checkbox } from "primereact/checkbox";
import { RadioButton } from "primereact/radiobutton";
import { Dropdown } from "primereact/dropdown";
import { InputTextarea } from "primereact/inputtextarea";
import { Card } from "primereact/card";
import { Calendar } from "primereact/calendar";
import "./paymentmethod.css";
import { Container, Row, Col, Form } from "react-bootstrap";
import { useNavigate } from "react-router-dom";
import  {addPayment, linkCustomer, getCustomerId, addBankAccount}  from "../api/authenticationService";

const PaymentMethod = () => {
  const navigate = useNavigate();
  const [cardholdername, setCardholdername] = useState("");
  const [bankname, setBankname] = useState("");
  const [cardnumber, setCardnumber] = useState("");
  const [cvc, setCvc] = useState("");
  const [expdate, setExpdate] = useState("");
  const [accountid1, setAccountid] = useState("");
  const [customerid1, setCustomerid] = useState("");
  const [userid1, setUserid] = useState("");
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");


  

  const getToken = () => {
    return localStorage.getItem("USER_KEY");
  };
  const getPassword = () => {
    return localStorage.getItem("PASSWORD");
  };
  const getID = () => {
    return localStorage.getItem("USER_ID");
  };
  let username_ = getToken();
  let password_ = getPassword();
  let userid = getID();

  React.useEffect(() => {

    username_ = getToken();
    setUsername(getToken());
    setPassword(getPassword());
    if (username_ === "undefined" || username_ === null) {
      navigate("/");
    }


  }, []);

  const handleSubmit = (e) => {
    e.preventDefault();
    const data = {bankname, cardnumber, cvc, expdate}
    console.log("data",data)
    console.log("username",username)
    console.log("password",password)
    addBankAccount(data,username,password).then((response) => {
      navigate("/homepage");
    })
  }

  const handleCancel = (e) => {
    e.preventDefault();
    navigate("/homepage");
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
      <Row>
        <br></br>
      </Row>
      <Row>
        <h1 className="namePaymentMethod">CardArmour.pk</h1>
      </Row>
      <Row>
        <Col xs={2}></Col>
        <Col xs={10}>
          <Card
            style={{
              borderRadius: "3%",
              marginTop: "3%",
              marginLeft: "23%",
              marginRight: "45%",
              backgroundColor: "rgb(238, 252, 255)",
            }}
          >
            <Row>
              <Col md={10}>
                <div className="PaymentMethodTag">Add Payment Method</div>
              </Col>
            </Row>

            <div className="p-fluid p-formgrid p-grid">
              <div className="p-field p-col-12 p-md-12">
                <label htmlFor="cardholdername" style={{ marginLeft: "38.5%" }}>
                  Card Holder Name
                </label>
                <InputText
                  id = "cardholdername"
                  value = {cardholdername}
                  onChange={(e) => setCardholdername(e.target.value)}
                  type="text"
                  placeholder="e.g. John Wich"
                />
              </div>

              <div className="p-field p-col-12 p-md-6">
                <label htmlFor="bankname" style={{ marginLeft: "32.5%" }}>
                  Bank Name
                </label>
                <InputText
                  id = "bankname"
                  value = {bankname}
                  onChange={(e) => setBankname(e.target.value)}
                  type="text"
                  placeholder="e.g. Tupac Bank"
                />
              </div>
              <div className="p-field p-col-12 p-md-6">
                <label htmlFor="cardnumber" style={{ marginLeft: "29%" }}>
                  Card Number
                </label>
                <InputText
                  id = "cardnumber"
                  value = {cardnumber}
                  onChange={(e) => setCardnumber(e.target.value)}
                  type="text"
                  placeholder="XXXX-XXXX-XXXX-XXXX"
                />
              </div>
              <div
                className="p-field p-col-12 p-md-6"
                style={{ marginTop: "0.1%" }}
              >
                <label htmlFor="cvc" style={{ marginLeft: "40%" }}>
                  CVC
                </label>
                <InputText 
                  id = "cvc"
                  value = {cvc}
                  onChange={(e) => setCvc(e.target.value)}
                  type="text" placeholder="XXX" />
              </div>

              <div className="p-field p-col-12 p-md-6">
                <label htmlFor="cvc" style={{ marginLeft: "36%" }}>
                  Exp Date
                </label>
                <InputText 
                  id = "expdate"
                  value = {expdate}
                  onChange={(e) => setExpdate(e.target.value)}
                  type="text" placeholder="XXX" />
              </div>
            </div>
            <Button
              label="Confirm"
              className="p-button-rounded p-button-outlined"
              onClick={handleSubmit}
              style={{
                marginLeft: "28%",
                marginTop: "2%",
                marginBottom: "5%",
              }}
            />
            <Button
              onClick={handleCancel}
              label="Cancel"
              className="p-button-rounded p-button-outlined"
              style={{ color: "red", marginLeft: "6%", marginBottom: "5%" }}
            />
          </Card>
        </Col>
      </Row>
    </div>
  );
};

export default PaymentMethod;
