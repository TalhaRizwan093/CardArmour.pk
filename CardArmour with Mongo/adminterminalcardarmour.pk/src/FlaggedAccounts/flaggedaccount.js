import "./flaggedaccount.css";
import { Col, Row } from "react-bootstrap";
import { Button } from "primereact/button";
import { useNavigate } from "react-router-dom";
import React, { useState } from "react";
import getFlaggedUsers, {getFlaggedOnUsername, deleteFlaggedAccount, deleteCustomer, getCustomers, getCustomerOnUsername ,getAllFlaggedCustomers, getAllCities, countriesAPI, deleteUser, getUseridByCustomerid, getFlaggedList } from "../api/authenticationService";

const Cardhistory = () => {
  const navigate = useNavigate();
  const [transactions, setTransactions] = useState([]);
  const [totalSpendings, setTotalSpending] = useState("");
  const [totalTransactions_, setTotalTransactions] = useState("");
  const [flaggedUsers, setFlaggedUsers] = useState([]);
  const [flags, setFlags] = useState([]);
  const [flagUsers, setFlagUser] = useState([]);
  const [citiesLov, setCitiesLov] = useState([]);
  const [countriesLov, setCountriesLov] = useState([]);
  const [reason, setReason_] = useState(null);
  let flag = [];

  const getToken = () => {
    return localStorage.getItem("USER_KEY");
  };
  const getVirtualCardID = () => {
    return localStorage.getItem("VC_ID");
  };

  let username = getToken();

  React.useEffect(() => {
    let allusers = [];
    username = getToken();
    if (username === "undefined" || username === null) {
      navigate("/");
    }
    const fetchData = async () => {
      const response = await getFlaggedUsers.get();
      const data = response.data
      setFlags(data);
      for (let index = 0; index < data.length; index++) {
        const r = await getCustomerOnUsername(data[index].username);
        const data_user = r.data
        allusers.push(data_user)
        console.log("in loop")
      }
      setFlaggedUsers(allusers)
      
      console.log("outside loop")
    }
    fetchData();

  }, []);

  const setLocation = (v) => {
    let location = v.city + ", " + v.country;
    return location;
  };
  

  // React.useEffect(() => {
  //   username = getToken();
  //   if (username === "undefined" || username === null) {
  //     navigate("/");
  //   }
  //   const fetchData = async () => {
  //     const response = await getFlaggedUsers.get();
  //     const data = response.data
  //     console.log(data)
  //     for (let index = 0; index < data.length; index++) {
  //       const r = await getCustomerOnUsername(data[index].username);
  //       const data_user = [r.data]
  //       setFlaggedUsers(old => [...old,...data_user])
  //     }
  //     setFlaggedUsers(allusers)
  //     return response.data;
  //   }
  //   fetchData();

  // }, []);
  
  const handleReturnHome = (e) => {
    e.preventDefault();
    console.log(flaggedUsers)
    navigate("/homepage");
  };


  const handleDelete = (e) => {
    //e.preventDefault();
    console.log(e.value)
    //deleteUser()
  }

  // const CheckCity = (v) => {
  //   citiesLov.forEach((element) => {
  //     let countryid;
  //     if (element.cityid === v) {
  //       countryid = element.countryid;
  //       v = element.name;
  //       countriesLov.forEach((element) => {
  //         if (countryid === element.countryid)
  //           v = v + ", " + element.name;
  //       })
  //     }
  //   });
  //   return v;
  // };

  // const dob = (v) => {
  //   let dob = "";
  //   for (let index = 0; index < v.length; index++) {
  //     dob = dob + v[index]
  //     if (v[index + 1] === 'T') {
  //       break
  //     }
  //   }
  //   return dob;
  // };

  const setReason = (v) => {
    flags.forEach((element) => {
      //let countryid;
      if (element.username === v) {
        v = element.reason;
      }
    });
    return v;
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
      <div>
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
      <div style={{ marginLeft: "10%", marginRight: "10%", marginTop: "2%" }}>
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
            <th style={{ textAlign: "center" }}>Reason</th>
            <th style={{ textAlign: "center" }}>Options</th>
          </tr>
          <tbody>
            {flaggedUsers.map((flaggedUser) => (
              <tr>
                
                <td>{flaggedUser.name}</td>
                <td>{flaggedUser.gender}</td>
                <td>{flaggedUser.cnic}</td>
                <td>{flaggedUser.dateofbirth}</td>
                <td>{flaggedUser.age}</td>
                <td>{flaggedUser.email}</td>
                <td>{setLocation(flaggedUser.location)}</td>
                {/* <td>{flaggedUser.username}</td> */}
                <td>{setReason(flaggedUser.username)}</td>
                {/* <td>{CheckCity(flaggedUser.cityid)}</td> */}
                <td>              <Button
                  onClick={() => {
                    deleteFlaggedAccount(flaggedUser.username).then((response) => {
                      window.location.reload(true);
                    })
                  }}
                  label="Remove From Flag User"
                  className="p-button-outlined p-button-warning"
                  style={{ color: "yellow" }}
                />
                  <Button
                    onClick={() => {
                      console.log(flaggedUser.username)
                      deleteCustomer(flaggedUser.username).then((response) => {
                        deleteFlaggedAccount(flaggedUser.username).then((response) => {
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
    </div>
  );
};

export default Cardhistory;
