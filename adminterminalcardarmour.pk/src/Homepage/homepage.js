import { Col, Row } from "react-bootstrap";
import { Button } from "primereact/button";
import { Card } from "primereact/card";
import { Dropdown } from "primereact/dropdown";
import "./homepage.css";
import { useNavigate } from "react-router-dom";
import React, { useState } from "react";
import { connect } from "react-redux";
import { ProgressSpinner } from "primereact/progressspinner";
import { Dialog } from "primereact/dialog";
import { InputText } from "primereact/inputtext";
import {
  getCustomerId,
  getAllCustomers,
  getUser,
  getCityByCustomer,
  getAllCities,
  countriesAPI,
  addToFlaggedUser,
  getAdminID,
  getAllFeedback,
  getReply,
  getIndianCustomers,
  getPakistaniCustomers,
  getBangladeshiCustomers,
  getChineseCustomers
} from "../api/authenticationService";

const Homepage = ({ loading, error, ...props }) => {
  const navigate = useNavigate();
  const [displayBasic, setDisplayBasic] = useState(false);
  const [position, setPosition] = useState("center");
  const [expiryDate, setExpiryDate] = useState("");
  const [bankName, setBankName] = useState("");
  const [cardNumber, setCardNumber] = useState("");
  const [expDate, setExpDate] = useState("");
  const [accountid1, setAccountId] = useState(null);
  const [virtualCardNumber, setVirtualCardNumber] = useState(null);
  const [cardid, setCardid] = useState(null);
  const [validity, setValidity] = useState("");
  const [cvc, setCVC] = useState("");
  const [username, setUsername] = useState("");
  const [reason, setReason] = useState("");
  const [customers, setCustomers] = useState([]);
  const [citiesLov, setCitiesLov] = useState([]);
  const [cities, setCities] = useState([]);
  const [countriesLov, setCountriesLov] = useState([]);
  const [customerid, setCustomerid] = useState([]);
  const [adminid, setAdminid] = useState([]);
  const [countryBy, setCountryBy] = useState([]);
  const [country, setCountry] = useState(null);
  const [feedbacks, setFeedbacks] = useState([]);

  const genders = [{ name: "Male" }, { name: "Female" }];

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
  


  const CheckCity = (v) => {
    citiesLov.forEach((element) => {
      let countryid;
      if (element.cityid === v) {
        countryid = element.countryid;
        v = element.name;
        countriesLov.forEach((element) => {
          if (countryid === element.countryid)
            v = v + ", " + element.name;
        })
      }
    });
    return v;
  };

  let userid = null;

  const getToken = () => {
    return localStorage.getItem("USER_KEY");
  };
  const getID = () => {
    return localStorage.getItem("USER_ID");
  };
  let id = getID();

  React.useEffect(() => {
    loading = true;
    const username_ = getToken();
    getUser(id).then((response) => {
      setUsername(response.data.username);
    })
    if (username_ === "undefined" || username_ === null) {
      navigate("/");
    }

    getCustomerId(id).then((response) => {
      userid = response.data;
      localStorage.setItem("C_ID", response.data);

    });

    getAdminID(id).then((response) => {
      setAdminid(response.data)
    })


    getAllCustomers().then((response) => {
      const customerList = response.data
      let data = customerList
      setCustomers(data);
    })
    getAllCities().then((response) => {
      setCitiesLov(response.data)
    })
    countriesAPI().then((response) => {
      setCountriesLov(response.data)
    })
    getAllFeedback().then((response) => {
      console.log("feedbacks", response);
      setFeedbacks(response.data)
    })

    countriesAPI().then((response) => {
      console.log(response)
      const country = response.data
      setCountryBy(country)
    })

  }, []);

  const handleLogout = (e) => {
    e.preventDefault();
    localStorage.clear();
    navigate("/");
  };


  const handleFlaggedAccount = (e) => {
    e.preventDefault();
    navigate("/flaggedaccount");
  };

  const onCountryChange = (e) => {
    setCountry(e.value);
  };

  const handleFlag = (e) => {
    e.preventDefault();
    const customerCustomerid = customerid
    const adminAdminid = adminid
    const data = { customerCustomerid, reason, adminAdminid }
    console.log(data)
    addToFlaggedUser(data).then((response) => {
      window.location.reload(true);
    })
  }

  const dob = (v) => {
    let dob = "";
    for (let index = 0; index < v.length; index++) {
      dob = dob + v[index]
      if (v[index + 1] === 'T') {
        break
      }
    }
    return dob;
  };

  const handleCountryChange = (e) => {
    e.preventDefault();
    console.log(country)
    if(country.name === "Pakistan"){
      getPakistaniCustomers().then((response) => {
        setCustomers(response.data);
        console.log(response)
      })
    }
    else if(country.name === "India"){
      getIndianCustomers().then((response) => {
        setCustomers(response.data);
        console.log(response)
      })

    }
    else if(country.name === "Bangladesh"){
      getBangladeshiCustomers().then((response) => {
        setCustomers(response.data);
        console.log(response)
      })
    }
    else if(country.name === "China"){
      getChineseCustomers().then((response) => {
        setCustomers(response.data);
        console.log(response)
      })
    }
    else{
      alert("Select valid country")
    }

  }

  const renderFooter = (name) => {
    return (
      <div>
        <Button label="No" icon="pi pi-times" onClick={() => onHide(name)} className="p-button-text" />
        <Button label="Yes" icon="pi pi-check" onClick={handleFlag} autoFocus />
      </div>
    );
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
            <Col md={4}>
              <Button
                onClick={handleFlaggedAccount}
                label="Flagged Accounts"
                className="p-button-outlined p-button-warning"
                style={{ color: "red", marginLeft: "5%" }}
              />
            </Col>
            <Col md={4}>
              <h1 className="nameCard1">CardArmour.pk</h1>
            </Col>
            <Col md={4}>
              <h2 className="name1">Welcome {username}</h2>
            </Col>
          </Row>
          <Row>
            <Col md={5}></Col>
            <Col md={4}></Col>
            <Col md={3}>
              <Button
                onClick={handleLogout}
                label="Log Out"
                className="p-button-outlined p-button-warning"
                style={{ color: "yellow", marginLeft: "23%" }}
              />
            </Col>
          </Row>
          <Row>
            <br></br>
          </Row>

          <Row>
            <Col md={8}>
              <div style={{ marginLeft: "1%" }}>
                <h4
                  style={{
                    textAlign: "center",
                    marginTop: "5%",
                    color: "white",
                  }}
                >
                  Customers
                </h4>
                <div className="p-field p-col-12 p-md-3">
                  <label
                    htmlFor="gender"
                    style={{ marginLeft: "30%", marginTop: "13.5%" }}
                  >
                    Filtter Country By
                  </label>
                  <Dropdown
                    inputId="gender"
                    value={country}
                    options={countryBy}
                    onChange={onCountryChange}
                    placeholder="Select"
                    optionLabel="name"
                  />
                  <Button
                    onClick={handleCountryChange}
                    label="Go"
                    className="p-button-rounded p-button-outlined"
                    style={{
                      color: "green",
                      marginLeft: "10%",
                      marginBottom: "5%",
                    }}
                  />
                </div>
                <table className="customers"
                  style={{
                    "marginTop": "2%"

                  }}
                >
                  <tr
                    style={{
                      alignItems: "center",
                      margintop: "0%"
                    }}
                  >
                    <th style={{ textAlign: "center" }}>Name</th>
                    <th style={{ textAlign: "center" }}>Gender</th>
                    <th style={{ textAlign: "center" }}>Cnic</th>
                    <th style={{ textAlign: "center" }}>DOB</th>
                    <th style={{ textAlign: "center" }}>Age</th>
                    <th style={{ textAlign: "center" }}>Email</th>
                    <th style={{ textAlign: "center" }}>Location</th>
                    <th style={{ textAlign: "center" }}>Options</th>
                  </tr>
                  <tbody>
                    {customers.map((customer) => (
                      <tr>
                        <td>{customer.name}</td>
                        <td>{customer.gender}</td>
                        <td>{customer.cnic}</td>
                        <td>{dob(customer.dob)}</td>
                        <td>{customer.age}</td>
                        <td>{customer.email}</td>
                        <td>{CheckCity(customer.cityid)}</td>
                        <td>              <Button
                          onClick={() => {
                            setCustomerid(customer.customerid)
                            console.log(customer.customerid)
                            onClick('displayBasic')
                          }}
                          label="Flag Customer"
                          className="p-button-outlined p-button-warning"
                          style={{ color: "red" }}
                        />
                        </td>
                      </tr>
                    ))}

                  </tbody>
                </table>
              </div>
            </Col>
            <Col md={4}>
              <div style={{ marginTop: "10%", marginRight: "1%" }}>
                <h4
                  style={{
                    textAlign: "center",
                    marginTop: "5%",
                    color: "white",
                  }}
                >
                  Customer Feedback
                </h4>
                <table className="customers">
                  <tr
                    style={{
                      alignItems: "center",
                    }}
                  >
                    <th style={{ textAlign: "center" }}>Destails</th>
                    <th style={{ textAlign: "center" }}>Options</th>
                  </tr>
                  <tbody>
                    {feedbacks.map((feedback) => (
                      <tr>

                        <td>{feedback.detail}</td>
                        <td>{<Button
                          onClick={() => {
                            localStorage.setItem('FEEDBACK_ID', feedback.feedbackid);
                            localStorage.setItem('FEEDBACK_CUSTOMER_ID', feedback.customerid);
                            navigate("/feedback")
                          }}
                          label="Reply"
                          className="p-button-outlined p-button-warning"
                          style={{ color: "red" }}
                        />
                        }</td>

                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>
            </Col>
          </Row>
        </div>
      )}
      <Dialog header="Enter Reason" visible={displayBasic} style={{ width: '50vw' }} footer={renderFooter('displayBasic')} onHide={() => onHide('displayBasic')}>
        <InputText
          id="username"
          value={reason}
          onChange={(e) => setReason(e.target.value)}
          style={{ width: "222px" }}
        />
      </Dialog>
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
