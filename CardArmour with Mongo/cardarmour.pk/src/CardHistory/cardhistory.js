import "./cardhistory.css";
import { Col, Row } from "react-bootstrap";
import { Button } from "primereact/button";
import { useNavigate } from "react-router-dom";
import  React ,{useState} from "react";
import { getTransactions } from "../api/authenticationService"
import { getSpending, getCountTransactions, totalSpending, totlaTransactions} from "../api/authenticationService"

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
    getTransactions(username).then((response) => {
      const transactionList = response.data
      setTransactions(transactionList);
    })
    getSpending(username).then((response) => {
      console.log("spending",response)
      setTotalSpending(response.data)
    })
    getCountTransactions(username).then((response) => {
      console.log(response)
      setTotalTransactions(response.data)
    })
    // getTransactions(cardid).then((response) => {
    //   const transactionList = response.data
    //   setTransactions(transactionList);
    //   totalSpending(cardid).then((response) => {
    //     setTotalSpending(response.data)
    //   })
    //   totlaTransactions(cardid).then((response) => {
    //     setTotalTransactions(response.data)
    //   })

    // })
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
        <Col md={2}>
          <Button
            onClick={handleReport}
            label="Report a Problem"
            className="p-button-raised p-button-danger"
            style={{ marginTop: "2%" }}
          />
        </Col>
      </Row>

      <div>
        <br></br>
        <h5 className="ch">Virtual Card Transaction History</h5>
      </div>
      <div style={{ marginLeft: "15%", marginRight: "15%", marginTop: "2%" }}>
      <Row>
          <Col md={6}>
            <h5
              style={{ marginBottom: "2%", color: "white", marginLeft: "45%" }}
            >
              Total Transactions done on this card: {totalTransactions_}
            </h5>
          </Col>
          <Col md={6}>
            <h5 style={{ color: "white", marginLeft: "15%" }}>
              Total Spending: Rs.{totalSpendings}
            </h5>
          </Col>
        </Row>
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
                    {transaction.amount !== 0 &&<td>{transaction.date}</td>}
                    {transaction.amount !== 0 &&<td>{transaction.comment}</td>}
                    {transaction.amount !== 0 &&<td>{transaction.status}</td>}
                    {transaction.amount !== 0 &&<td>{transaction.amount}</td>}
                  </tr>
              ))} 
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default Cardhistory;
