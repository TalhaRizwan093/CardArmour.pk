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

const PaymentMethod = () => {
  const [date1, setDate1] = useState(null);
  const navigate = useNavigate();
  
  const getToken=()=>{
    return localStorage.getItem('USER_KEY');
  }
  let username = getToken();
  
  React.useEffect(()=>{
    username = getToken();
    if( username === "undefined" ||  username === null){
      navigate('/');
    }
  },[])

  const handleCancel = (e) => {
    e.preventDefault();
    navigate('/homepage');
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
      <Row>
        <br></br>
      </Row>
      <Row>
        <h1 className="name">CardArmour.pk</h1>
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
              <Col md={2}>
                <Button
                  icon="pi pi-times"
                  className="p-button-rounded p-button-danger p-button-text"
                  style={{
                    marginLeft: "30%",
                    marginBottom: "6%",
                    marginTop: "-100%",
                  }}
                />
              </Col>
            </Row>

            <div className="p-fluid p-formgrid p-grid">
              <div className="p-field p-col-12 p-md-12">
                <label htmlFor="cardholdername" style={{ marginLeft: "35%" }}>
                  Card Holder Name
                </label>
                <InputText
                  id="firstname"
                  type="text"
                  placeholder="e.g. John Wich"
                />
              </div>

              <div className="p-field p-col-12 p-md-6">
                <label htmlFor="bankname" style={{ marginLeft: "25%" }}>
                  Bank Name
                </label>
                <InputText
                  id="firstname"
                  type="text"
                  placeholder="e.g. Tupac Bank"
                />
              </div>
              <div className="p-field p-col-12 p-md-6">
                <label htmlFor="cardnumber" style={{ marginLeft: "29%" }}>
                  Card Number
                </label>
                <InputText
                  id="cnic"
                  type="text"
                  placeholder="XXXX-XXXX-XXXX-XXXX"
                />
              </div>
              <div
                className="p-field p-col-12 p-md-6"
                style={{ marginTop: "0.1%" }}
              >
                <label htmlFor="cvc" style={{ marginLeft: "35%" }}>
                  CVC
                </label>
                <InputText id="cnic" type="text" placeholder="XXX" />
              </div>

              <div className="p-field p-col-12 p-md-6">
                <label htmlFor="cvc" style={{ marginLeft: "20%" }}>
                  Exp Date
                </label>
                <InputText id="cnic" type="text" placeholder="XXX" />
              </div>
            </div>
            <Button
              label="Add"
              className="p-button-rounded p-button-outlined"
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
