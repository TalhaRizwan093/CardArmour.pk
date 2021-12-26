import "./flaggedaccount.css";
import { Col, Row } from "react-bootstrap";
import { Button } from "primereact/button";
import { useNavigate } from "react-router-dom";
import React, { useState } from "react";
import { getAllFlaggedCustomers, getAllCities, countriesAPI, deleteUser, getUseridByCustomerid } from "../api/authenticationService";

const Cardhistory = () => {
  const navigate = useNavigate();
  const [transactions, setTransactions] = useState([]);
  const [totalSpendings, setTotalSpending] = useState("");
  const [totalTransactions_, setTotalTransactions] = useState("");
  const [flaggedUsers, setFlaggedUsers] = useState([]);
  const [citiesLov, setCitiesLov] = useState([]);
  const [countriesLov, setCountriesLov] = useState([]);

  const getToken = () => {
    return localStorage.getItem("USER_KEY");
  };
  const getVirtualCardID = () => {
    return localStorage.getItem("VC_ID");
  };

  let username = getToken();

  React.useEffect(() => {
    const cardid = getVirtualCardID();
    console.log(cardid);
    username = getToken();
    if (username === "undefined" || username === null) {
      navigate("/");
    }
    getAllFlaggedCustomers().then((response) => {
      console.log(response)
      setFlaggedUsers(response.data)
    })

    getAllCities().then((response) => {
      setCitiesLov(response.data)
    })
    countriesAPI().then((response) => {
      setCountriesLov(response.data)
    })

  }, []);

  const handleReturnHome = (e) => {
    e.preventDefault();
    navigate("/homepage");
  };


  const handleDelete = (e) => {
    //e.preventDefault();
    console.log(e.value)
    //deleteUser()
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
      <div>
        <br></br>
      </div>
      <Row>
        <Col md={2}>
          <Button
            onClick={handleReturnHome}
            label="Return Home"
            className="p-button-rounded p-button-outlined"
            style={{ color: "yellow", marginLeft: "15%" }}
          />
        </Col>
        <Col md={8}>
          <div>
            <h1 className="nameCard">CardArmour.pk</h1>
          </div>
        </Col>
        <Col md={2}></Col>
      </Row>

      <div>
        <br></br>
        <h5 className="ch">Flagged Accounts</h5>
      </div>
      <div style={{ marginLeft: "15%", marginRight: "15%", marginTop: "2%" }}>
        <table className="customers">
          <tr
            style={{
              alignItems: "center",
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
            {flaggedUsers.map((flaggedUser) => (
              <tr>
                <td>{flaggedUser.name}</td>
                <td>{flaggedUser.gender}</td>
                <td>{flaggedUser.cnic}</td>
                {/* <td>{flaggedUser.dob}</td> */}
                <td>{dob(flaggedUser.dob)}</td>
                <td>{flaggedUser.age}</td>
                <td>{flaggedUser.email}</td>
                <td>{CheckCity(flaggedUser.cityid)}</td>
                <td>              <Button
                  onClick={() => {

                  }}
                  label="Remove From Flag User"
                  className="p-button-outlined p-button-warning"
                  style={{ color: "yellow" }}
                />
                  <Button
                    onClick={() => {
                      console.log(flaggedUser.customerid)
                      let userid;
                      getUseridByCustomerid(flaggedUser.customerid).then((response) => {
                        userid = response.data
                        console.log(userid)
                        deleteUser(userid).then((response) => {
                          window.location.reload(true);
                        })
                      })
                    }}
                    label="Delete Account"
                    className="p-button-outlined p-button-warning"
                    style={{ color: "red", marginLeft: '2%' }}
                  />
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default Cardhistory;
