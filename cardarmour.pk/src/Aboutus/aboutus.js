import "./aboutus.css";
import { Card } from "primereact/card";
import { Button } from "primereact/button";
import { Col, Row } from "react-bootstrap";
import { useNavigate } from "react-router-dom";
import React from "react";

const Aboutus = () => {

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

  const handleReturnHome = (e) => {
    e.preventDefault();
    navigate('/homepage');
  }

  return (
    <div
      style={{
        backgroundImage: "url(aboutus.jpg)",

        position: "fixed",
        width: "100%",
        height: "100%",
        top: "0px",
        left: "0px",
        zIndex: "1000",
        height: "100vh",
      }}
    >
      <div>
        <Row>
          <br></br>
        </Row>
        <Row>
          <Col md={2}>
            <Button
              onClick={handleReturnHome}
              label="Return Home"
              className="p-button-rounded p-button-outlined"
              style={{ color: "yellow", marginLeft: "15%" }}
            />
          </Col>
          <Col md={10}>
            <h1 className="nameCard1" style={{ marginLeft: "30%" }}>
              CardArmour.pk
            </h1>
          </Col>
        </Row>
        <Row>
          <h4 className="nameCard1" style={{ marginLeft: "46.5%" }}>
            About Us
          </h4>
        </Row>
        <Row>
          <Col md={6}>
            <Card className="card1">
              <img
                src="./talha.jpeg"
                style={{ height: "250px", marginLeft: "25%" }}
              />
              <p className="text">
                Talha Rizwan CO-FOUNDER CardArmour.pk is an Software Engineering
                student at COMSATS Islamabad. He wishes to provide value to the
                IT industry with his hardwork and dedication.
              </p>
            </Card>
          </Col>
          <Col md={6}>
            <Card className="card2">
              <img
                src="./shehroze.jpeg"
                style={{ height: "250px", marginLeft: "30%" }}
              />
              <p className="text">
                Shehroze Ehsan CO-FOUNDER CardArmour.pk is an Software
                Engineering student at COMSATS Islamabad. He is an ambitious
                student and a fast learner.
              </p>
            </Card>
          </Col>
        </Row>
        <Row>
          <Col md={3}></Col>
          <Col md={6}>
            <Card className="para">
              <p className="paratext">
                CardArmour.pk strives to provide security when dealing with
                money online. CardArmour was made in an effort to reduce the
                probability of getting breached. The less servers with your
                original bank account details exponentially reduces chances of
                getting leaked. Even though our servers are not hack proof we
                ensure that if a breach occurs we will be the first to contact
                our customers so that can take precuationary measures from their
                side.{" "}
              </p>
            </Card>
          </Col>
          <Col md={3}></Col>
        </Row>
      </div>
    </div>
  );
};

export default Aboutus;
