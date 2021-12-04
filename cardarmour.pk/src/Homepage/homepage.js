import { Col, Row } from "react-bootstrap";
import { Button } from "primereact/button";
import { Card } from "primereact/card";
import "./homepage.css";

const homepage = () => {
  return (
    <div style={{ backgroundColor: "rgb(238, 252, 255)", height: "100vh" }}>
      <div>
        <Row>
          <br></br>
        </Row>
        <Row>
          <Col md={9}>
            <h1 className="name_home">CardArmour.pk</h1>
          </Col>
          <Col md={3}>
            <h2 className="name1">Welcome "USERNAME"</h2>
          </Col>
        </Row>
        <Row>
          <Col md={5}></Col>
          <Col md={4}></Col>
          <Col md={3}>
            <Button
              label="Help"
              className="p-button-raised p-button-info p-button-text"
              style={{ marginLeft: "19%" }}
            />
            <Button
              label="Setting"
              className="p-button-raised p-button-info p-button-text"
              style={{ marginLeft: "8%" }}
            />
            <Button
              label="About Us"
              className="p-button-raised p-button-info p-button-text"
              style={{ marginLeft: "8%" }}
            />
          </Col>
        </Row>
        <Row>
          <br></br>
        </Row>

        <Row>
          <Col ms={4}></Col>
          <Col ms={4}></Col>
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
              className="p-button-raised p-button-info p-button-text"
              style={{ marginLeft: "23%" }}
            />
            <Button
              label="Delete Current Card"
              className="p-button-raised p-button-danger p-button-text"
              style={{ marginLeft: "3%" }}
            />
          </Col>
        </Row>
      </div>
    </div>
  );
};

export default homepage;
