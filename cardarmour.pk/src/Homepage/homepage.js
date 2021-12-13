import { Col, Row } from "react-bootstrap";
import { Button } from "primereact/button";
import { Card } from "primereact/card";
import "./homepage.css";
import { useNavigate } from "react-router-dom";
import React, { useState } from "react";
import { connect } from "react-redux";
import { ProgressSpinner } from "primereact/progressspinner";
import { Dialog } from 'primereact/dialog';
import { InputText } from "primereact/inputtext";
import { getUser, getCustomerId, getBankAccount, deletePaymentMethod, generateVirtualCard, linkVirtualCard, getVirtualCard, deleteVirtualCard, getFiveTransactions } from "../api/authenticationService";


const Homepage = ({ loading, error, ...props }) => {
  const navigate = useNavigate();
  const [displayBasic, setDisplayBasic] = useState(false);
  const [position, setPosition] = useState('center');
  const [expiryDate, setExpiryDate] = useState("");
  const [bankName, setBankName] = useState("");
  const [cardNumber, setCardNumber] = useState("");
  const [expDate, setExpDate] = useState("");
  const [accountid1, setAccountId] = useState(null);
  const [virtualCardNumber, setVirtualCardNumber] = useState(null);
  const [cardid, setCardid] = useState(null);
  const [validity, setValidity] = useState("");
  const [cvc, setCVC] = useState("");
  const [transactions, setTransactions] = useState([]);
  const [username, setUsername] = useState("");


  let userid = null;
  let accountid = null;

  const getToken = () => {
    return localStorage.getItem("USER_KEY");
  };
  const getID = () => {
    return localStorage.getItem("USER_ID");
  };
  //let username = null;
  let id = getID();


  React.useEffect(() => {
    loading = true;
    const username_= getToken();
    getUser(id).then((response) => {
      setUsername(response.data.username);
    })
    if (username_ === "undefined" || username_ === null) {
      navigate("/");
    }


    getCustomerId(id).then((response) => {
      userid = response.data
      localStorage.setItem('C_ID',response.data);
      getBankAccount(userid).then((response) => {
        setBankName(response.data.bankname)
        setCardNumber(response.data.cardnumber)
        setExpDate(response.data.expdate)
        setAccountId(response.data.accountid)
        accountid = response.data.accountid;
        if (accountid !== null) {
          getVirtualCard(accountid).then((response) => {
            console.log(response);
            setVirtualCardNumber(response.data.cardNumber);
            setValidity(response.data.expdate);
            setCVC(response.data.cvc)
            setCardid(response.data.cardid);
            localStorage.setItem('VC_ID',response.data.cardid);
            const virtualCardId = response.data.cardid
            getFiveTransactions(virtualCardId).then((response) => {
              const transactionList = response.data
              setTransactions(transactionList);
              console.log(transactions);
            })
          })
        }
      })
    })

  }, []);

  const handleDeletePayment = (e) => {
    e.preventDefault();
    deletePaymentMethod(accountid1).then((response) => {
      window.location.reload(true);
    })
  }

  const dialogFuncMap = {
    'displayBasic': setDisplayBasic,
  }

  const onClick = (name, position) => {
    console.log(accountid1);
    dialogFuncMap[`${name}`](true);

    if (position) {
      setPosition(position);
    }
  }
  const onHide = (name) => {
    dialogFuncMap[`${name}`](false);
  }

  const handleSubmit = () => {

    const cardholdername = username;
    const expdate = expiryDate;
    generateVirtualCard(cardholdername, expdate).then((response) => {
      const virtualcardid = response.data;
      linkVirtualCard(accountid1, virtualcardid).then((response) => {
        console.log(response)
        window.location.reload(true);
      })

    })
    console.log("check");
  }

  const renderFooter = (name) => {
    return (
      <div>
        <Button label="No" icon="pi pi-times" onClick={() => onHide(name)} className="p-button-text" />
        <Button label="Yes" icon="pi pi-check" onClick={handleSubmit} autoFocus />
      </div>
    );
  }

  const handleLogout = (e) => {
    e.preventDefault();
    localStorage.clear();
    navigate("/");
  };

  const handleAboutus = (e) => {
    e.preventDefault();
    navigate("/aboutus");
  };

  const handleSetting = (e) => {
    e.preventDefault();
    navigate("/setting");
  };

  const handleFeedback = (e) => {
    e.preventDefault();
    navigate("/feedback");
  };

  const handlePayment = (e) => {
    e.preventDefault();
    navigate("/paymentmethod");
  };

  const handleCardHistory = (e) => {
    e.preventDefault();
    navigate("/cardhistory");
  };

  const handleSmsHistory = (e) => {
    e.preventDefault();
    navigate("/smshistory");
  };

  const handleFeedbackHistory = (e) => {
    e.preventDefault();
    navigate("/feedbackhistory");
  };

  const handleVirtualCardDelete = (e) => {
    e.preventDefault();
    deleteVirtualCard(cardid).then((response) => {
      window.location.reload(true);
    })
    
    
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
      {loading && (
        <div>
          <Row>
            <br></br>
          </Row>
          <Row>
            <ProgressSpinner id="loading" strokeWidth="5" />
            <h1 className="pending">Loading...</h1>
          </Row>
          <Row></Row>
        </div>
      )}
      {loading === false && (
        <div>
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
                usibility of our system. In case of any issues or recomendation,
                click the link below.
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
                <p className="text2">Payment Method </p>
                <p className="text3">Bank Name:   {bankName}</p>
                <p className="text3">Card Number:   {cardNumber}</p>
                <p className="text3">Exp Date:   {expDate}</p>
                {accountid1 === null || accountid1 === undefined && <Button
                  onClick={handlePayment}
                  label="Add Payment Method"
                  className="p-button-raised p-button-success"
                  style={{ marginLeft: "30%" }}
                />}
                {accountid1 &&
                  <Button
                    onClick={handleDeletePayment}
                    label="Delete Payment Method"
                    className="p-button-raised p-button-danger"
                    style={{ marginLeft: "30%" }}
                  />
                }
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
                  {transactions.map((transaction) => (
                  <tr>
                    {/* <td>{titleLov[product.title - 1].title}</td>
                    <td>{CheckkTitle(product.title)}</td> */}
                    <td>{transaction.date}</td>
                    <td>{transaction.comment}</td>
                    { transaction.status === '1' &&
                    <td><p>Successfull</p></td>
                    }
                    { transaction.status === '0' &&
                    <td><p>Failed</p></td>
                    }
                    <td>{transaction.amount}</td>
                  </tr>
                   ))} 
                </tbody>
              </table>
              <p className="text1">
                Note: This table shows only 5 recently done transactions. View
                Card History for complete history.
              </p>
            </Col>
            <Col ms={4}>
              <p className="yourvc">Your Virtual Card</p>

              {(virtualCardNumber === null || virtualCardNumber === undefined) && <Card className="debitcard">
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
              </Card>}
              {virtualCardNumber &&
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
                    <h2 className="cardnumber">{virtualCardNumber}</h2>
                  </Row>
                  <Row>
                    <h5 className="cardexp">Expiry Date: {validity}</h5>
                  </Row>
                  <Row>
                    <Col ms={4}>
                      <h3 className="cardholdername">{username}</h3>
                    </Col>
                    <Col ms={2}>
                      <h3 className="CVC">CVC: {cvc}</h3>
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
              }
              <br></br>
              {/* <Button
                label="Generate New Card"
                className="p-button-raised p-button-info"
                style={{ marginLeft: "23%" }}
              /> */}
              { (virtualCardNumber === null || virtualCardNumber === undefined) &&
              <Button label="Generate New Card" icon="p-button-raised p-button-info" onClick={() => onClick('displayBasic')} style={{ marginLeft: "37.5%" }} />
      }
              <Dialog header="Enter Expiry Date" visible={displayBasic} style={{ width: '50vw' }} footer={renderFooter('displayBasic')} onHide={() => onHide('displayBasic')}>
                <InputText
                  id="username"
                  value={expiryDate}
                  onChange={(e) => setExpiryDate(e.target.value)}
                  style={{ width: "222px" }}
                />
              </Dialog>
              {virtualCardNumber && <Button
                onClick={handleVirtualCardDelete}
                label="Delete Current Card"
                className="p-button-raised p-button-danger"
                style={{ marginLeft: "37.5%" }}
              />}
              <br></br>
              <Button
                onClick={handleCardHistory}
                label="See Card History"
                className="p-button-raised p-button-help"
                style={{ marginLeft: "39.5%", marginTop: "2%" }}
              />
              <Row style={{ marginTop: "10%" }}>
                <Col md={6}>
                  <Button
                    onClick={handleSmsHistory}
                    label="See SMS History"
                    className="p-button-raised p-button-secondary"
                    style={{ marginLeft: "50%" }}
                  />
                </Col>
                <Col md={6}>
                  <Button
                    onClick={handleFeedbackHistory}
                    label="See Feedback History"
                    className="p-button-raised p-button-secondary"
                    style={{ marginLeft: "5%" }}
                  />
                </Col>
              </Row>
            </Col>
          </Row>
        </div>
      )}
    </div>
  );
};

const mapStateToProps = ({ auth }) => {
  return {
    loading: auth.loading,
    error: auth.error,
  };
};

export default connect(mapStateToProps)(Homepage);
