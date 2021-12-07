import { Col, Row } from "react-bootstrap";
import { Button } from "primereact/button";
import { Card } from "primereact/card";
import "./homepage.css";
import { useNavigate } from "react-router-dom";
import React, { useState } from "react";
import { connect } from 'react-redux';
import { ProgressSpinner } from 'primereact/progressspinner';

const Homepage = ({loading,error,...props}) => {

  const navigate = useNavigate();
  
  const getToken=()=>{
    return localStorage.getItem('USER_KEY');
  }
  let username = getToken();
  
  React.useEffect(()=>{
    loading = true;
    console.log(loading);
    username = getToken();
    console.log(username);
    if( username === "undefined" ||  username === null){
      navigate('/');
    }
    
      
  },[])

  const handleLogout = (e) =>{
    e.preventDefault();
    localStorage.clear();
    navigate('/');
  }

  const handleAboutus = (e) =>{
    e.preventDefault();
    navigate('/aboutus');
  }

  const handleSetting = (e) =>{
    e.preventDefault();
    navigate('/setting');
  }

  const handleFeedback = (e) =>{
    e.preventDefault();
    navigate('/feedback');
  }

  const handlePayment = (e) =>{
    e.preventDefault();
    navigate('/paymentmethod');
  }

  const handleCardHistory = (e) =>{
    e.preventDefault();
    navigate('/cardhistory');
  }

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
      { loading && <div>
        <Row>
          <br></br>
        </Row>
        <Row>
        <ProgressSpinner id="loading" strokeWidth ="5"/>
        <h1 className="pending">Loading...</h1>
        {/* <div class="loader"></div>
        <h1 className="pending">Loading...</h1> */}
        </Row>
        <Row></Row></div>}
        { loading === false && <div>
        <Row>
          <br></br>
        </Row>
        <Row>
          <Col md={3}>
            <Button
              icon="pi pi-search"
              className="p-button-rounded p-button-info p-button-outlined"
              style={{ marginLeft: "5%", marginTop: "1%" }}
            />
            <Button
              icon="pi pi-bell"
              className="p-button-rounded p-button-warning p-button-outlined"
              style={{ marginLeft: "2%" }}
            />
            <Button
              icon="pi pi-bookmark"
              className="p-button-rounded p-button-secondary p-button-outlined"
              style={{ marginLeft: "2%" }}
            />
          </Col>
          <Col md={6}>
            <h1 className="nameCard1">CardArmour.pk</h1>
          </Col>
          <Col md={3}>
            <h2 className="name1">Welcome {username}</h2>
          </Col>
        </Row>
        <Row>
          <Col md={5}></Col>
          <Col md={4}></Col>
          <Col md={3}>
            <Button
              onClick={handleSetting}
              label="Setting"
              className="p-button-rounded p-button-outlined"
              style={{ color: "white", marginLeft: "21%" }}
            />
            <Button
              onClick={handleAboutus}
              label="About Us"
              className="p-button-rounded p-button-outlined"
              style={{ color: "white", marginLeft: "3%" }}
            />
            <Button
              onClick={handleLogout}
              label="Log Out"
              className="p-button-rounded p-button-outlined"
              style={{ color: "yellow", marginLeft: "3%" }}
            />
          </Col>
        </Row>
        <Row>
          <br></br>
        </Row>

        <Row>
          <Col ms={4}>
            <img
              src="police.png"
              style={{ height: "200px", marginLeft: "35%" }}
            />
            <p className="text">
              Why worry when buying stuff online when you can simply use
              CardArmour.pk. Just generate a Virtual Card on your Debit/Credit
              card, and use the Virtual Card on any shady site you want! At
              CardArmour we are always finding ways to increase the overall
              usibility of our system. Do you have an idea that we should
              implement? Give us feedback by clicking the link below.
            </p>
            <Button
              onClick={handleFeedback}
              label="Feedback"
              className="p-button-raised p-button-help"
              style={{ marginLeft: "50%" }}
            />
            <Card
              style={{
                marginTop: "5%",
                marginLeft: "15%",
                borderRadius: "8%",
                backgroundImage: "url(paymentcard.png)",
              }}
            >
              <p className="text2">Payment Method</p>
              <p className="text3">Bank Name:</p>
              <p className="text3">Card Number:</p>
              <p className="text3">Exp Date:</p>
              <Button
                onClick = {handlePayment}
                label="Add Payment Method"
                className="p-button-raised p-button-success"
                style={{ marginLeft: "8%", marginTop: "2%" }}
              />
              <Button
                label="Delete Payment Method"
                className="p-button-raised p-button-danger"
                style={{ marginLeft: "6%" }}
              />
            </Card>
          </Col>
          <Col ms={4}>
            <div className="datatable">
              <br></br>
              <h3>Recent Trasnactions</h3>
              <br></br>
            </div>
            <table className="customers">
              <tr
                style={{
                  alignItems: "center",
                }}
              >
                <th style={{ textAlign: "center" }}>Date</th>
                <th style={{ textAlign: "center" }}>Comment</th>
                <th style={{ textAlign: "center" }}>Status</th>
                <th style={{ textAlign: "center" }}>Amount</th>
              </tr>
              <tbody>
                {/* {products.map((product) => ( */}
                <tr>
                  {/* <td>{titleLov[product.title - 1].title}</td> */}
                  {/* <td>{CheckkTitle(product.title)}</td>
                    <td>{product.date}</td>
                    <td>{product.comment}</td>
                    <td>{product.status}</td>
                    <td>{product.amount}</td> */}
                </tr>
                {/* ))} */}
              </tbody>
            </table>
            <p className="text1">
              Note: This table shows only 5 recently done transactions. View
              Card History for complete history.
            </p>
          </Col>
          <Col ms={4}>
            <p className="yourvc">Your Virtual Card</p>

            <Card className="debitcard">
              <Row>
                <Col md={2}>
                  <img
                    src="shield.png"
                    style={{ height: "40px", marginLeft: "50%" }}
                  />
                </Col>
                <Col md={10}>
                  <div className="cardname">Card Armour</div>
                </Col>
              </Row>
              <Row>
                <img
                  src="card.png"
                  style={{
                    height: "40px",
                    width: "70px",
                    marginLeft: "4.7%",
                    marginTop: "3%",
                  }}
                />
              </Row>
              <Row>
                <br></br>
              </Row>
              <Row>
                <h2 className="cardnumber">XXXX-XXXX-XXXX-XXXX</h2>
              </Row>
              <Row>
                <p className="cardexp">VALID THRU: 12/24</p>
              </Row>
              <Row>
                <Col ms={6}>
                  <h3 className="cardholdername">USERNAME</h3>
                </Col>
                <Col ms={6}>
                  <img
                    src="mastercard.png"
                    style={{
                      height: "50px",
                      marginLeft: "60%",
                      marginTop: "-5%",
                    }}
                  />
                </Col>
              </Row>
            </Card>
            <br></br>
            <Button
              label="Generate New Card"
              className="p-button-raised p-button-info"
              style={{ marginLeft: "23%" }}
            />
            <Button
              label="Delete Current Card"
              className="p-button-raised p-button-danger"
              style={{ marginLeft: "3%" }}
            />
            <br></br>
            <Button
              onClick={handleCardHistory}
              label="See Card History"
              className="p-button-raised p-button-help"
              style={{ marginLeft: "39.5%", marginTop: "2%" }}
            />
          </Col>
        </Row>
      </div>}
    </div>
  );
};

const mapStateToProps=({auth})=>{
  return {
      loading:auth.loading,
      error:auth.error
}}

export default connect(mapStateToProps)(Homepage);
