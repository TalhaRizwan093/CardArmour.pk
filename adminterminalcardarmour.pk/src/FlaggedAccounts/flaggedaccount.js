import "./flaggedaccount.css";
import { Col, Row } from "react-bootstrap";
import { Button } from "primereact/button";
import { useNavigate } from "react-router-dom";
import React, { useState } from "react";
import { getTransactions } from "../api/authenticationService";
import { totalSpending, totlaTransactions } from "../api/authenticationService";

const Cardhistory = () => {
  const navigate = useNavigate();
  const [transactions, setTransactions] = useState([]);
  const [totalSpendings, setTotalSpending] = useState("");
  const [totalTransactions_, setTotalTransactions] = useState("");

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
    getTransactions(cardid).then((response) => {
      const transactionList = response.data;
      setTransactions(transactionList);
      console.log(transactions);
      totalSpending(cardid).then((response) => {
        setTotalSpending(response.data);
      });
      totlaTransactions(cardid).then((response) => {
        setTotalTransactions(response.data);
      });
    });
  }, []);

  const handleReturnHome = (e) => {
    e.preventDefault();
    navigate("/homepage");
  };

  const handleReport = (e) => {
    e.preventDefault();
    navigate("/feedback");
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
            {/* {feedbacks.map((feedback) => ( */}
            <tr>
              {/* <td>{titleLov[product.title - 1].title}</td>
                    <td>{CheckkTitle(product.title)}</td> */}
              {/* <td>{feedback.detail}</td> */}
              {/* <td>{feedback}</td> */}
              {/* <td>{transaction.comment}</td>
                <td>{transaction.amount}</td> */}
            </tr>
            {/* ))} */}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default Cardhistory;
