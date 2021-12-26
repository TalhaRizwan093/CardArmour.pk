import { Card } from "primereact/card";
import { Button } from "primereact/button";
import { Col, Row } from "react-bootstrap";
import "./login.css";
import React, { useState } from "react";
import { Chip } from "primereact/chip";
import { InputText } from "primereact/inputtext";
import { Password } from "primereact/password";
import { Checkbox } from "primereact/checkbox";
import { login, userLogin,  } from "../api/authenticationService";
import { ProgressSpinner } from "primereact/progressspinner";
import { useNavigate } from "react-router-dom";
import {
  authenticate,
  authFailure,
  authSuccess,
} from "../redux/action-creators/index";
import { connect } from "react-redux";
import { Alert } from "react-bootstrap";

const Login = ({ loading, error, ...props }) => {
  const [password, setPassword] = useState("");
  const [username, setUserName] = useState("");
  const [checked, setChecked] = useState(false);
  const navigate = useNavigate();
  const getToken = () => {
    return localStorage.getItem("USER_KEY");
  };

  React.useEffect(() => {
    localStorage.clear();
    props.loginFailure();
  }, []);

  const handleSubmit = (e) => {
    e.preventDefault();
    props.authenticate();
    login(username, password).then((response) => {
      if (response.status === 200) {
        console.log(response);
        props.setUser(response.data);
        navigate("/homepage");
      } else {
        props.loginFailure("Try again");
      }
    }).catch((err) => {
      if (err && err.response) {
        switch (err.response.status) {
          case 401:
            console.log("401 status");
            props.loginFailure("Try again");
            break;
          default:
            props.loginFailure("Try again");
        }
      } else {
        props.loginFailure("Try again");
      }
    });
    // const data = { username, password };
    // props.authenticate();
    // userLogin(data)
    //   .then((response) => {
    //     if (response.status === 200) {
    //       props.setUser(response.data);
    //       navigate("/homepage");
    //     } else {
    //       props.loginFailure("Bad Credentials! Try again");
    //     }
    //   })
    //   .catch((err) => {
    //     if (err && err.response) {
    //       switch (err.response.status) {
    //         case 401:
    //           console.log("401 status");
    //           props.loginFailure("Bad Credentials! Try again");
    //           break;
    //         default:
    //           props.loginFailure("Bad Credentials! Try again");
    //       }
    //     } else {
    //       props.loginFailure("Server Down");
    //     }
    //   });
  };

  const handleSignup = (e) => {
    e.preventDefault();
    navigate("/signup");
  };

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
      {loading && (
        <div>
          <Row>
            <br></br>
          </Row>
          <Row>
            <ProgressSpinner />
            <h1 className="pending">Loading</h1>
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
            <h1 className="nameLogin">CardArmour.pk</h1>
          </Row>
          <Row
            className="p-shadow-24"
            style={{
              marginLeft: "35%",
              marginTop: "3%",
              marginRight: "35%",
              borderRadius: "5%",
            }}
          >
            <Card
              title=""
              style={{
                backgroundColor: "rgb(238, 252, 255)",
                borderRadius: "5%",
              }}
            >
              <p className="LoginTag">Login</p>
              <p className="WelcomeTag">Welcome Back!</p>

              <span
                className="p-float-label"
                style={{
                  marginLeft: "29%",
                  marginBottom: "4%",
                  marginTop: "8%",
                }}
              >
                <InputText
                  id="username"
                  value={username}
                  onChange={(e) => setUserName(e.target.value)}
                  style={{ width: "222px" }}
                />
                <label htmlFor="username">Username</label>
              </span>

              <span
                className="p-float-label"
                style={{
                  marginLeft: "29%",

                  marginRight: "100%",
                }}
              >
                <Password
                  className="p-float-label"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  feedback={false}
                  toggleMask
                />
                <label htmlFor="Password">Password</label>
              </span>
              <Button
                label="Reset Password?"
                className="p-button-text"
                style={{
                  marginLeft: "75%",
                  marginBottom: "6%",
                  marginTop: "-8%",
                  fontSize: "small",
                }}
              />
              <div className="p-field-checkbox">
                <Checkbox
                  inputId="binary"
                  checked={checked}
                  onChange={(e) => setChecked(e.checked)}
                />
                <label htmlFor="binary">{"Remember me"}</label>
              </div>

              <Button
                onClick={handleSubmit}
                label="LOGIN"
                className="p-button-rounded p-button-outlined"
                style={{ marginLeft: "42%", marginTop: "2%" }}
              />
              {error && (
                <Alert style={{ marginTop: "20px" }} variant="danger">
                  {error}
                </Alert>
              )}

              <p className="secondarylogin">Or login with</p>
              <div
                className="p-d-flex p-ai-center p-flex-wrap"
                style={{ marginLeft: "23%" }}
              >
                <Chip
                  label="Apple"
                  icon="pi pi-apple"
                  className="p-mr-2 p-mb-2"
                />
                <Chip
                  label="Facebook"
                  icon="pi pi-facebook"
                  className="p-mr-2 p-mb-2"
                  style={{ marginLeft: "2%" }}
                />
                <Chip
                  label="Google"
                  icon="pi pi-google"
                  className="p-mr-2 p-mb-2"
                  style={{ marginLeft: "2%", marginBottom: "5%" }}
                />

                <p style={{ marginLeft: "16%", marginTop: "3%" }}>
                  Dont have an account?
                </p>
                <Button
                  onClick={handleSignup}
                  label="Sign up now"
                  className="p-button-text"
                  style={{ marginLeft: "19%", marginTop: "-5%" }}
                />
              </div>
            </Card>
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

const mapDispatchToProps = (dispatch) => {
  return {
    authenticate: () => dispatch(authenticate()),
    setUser: (data) => dispatch(authSuccess(data)),
    loginFailure: (message) => dispatch(authFailure(message)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Login);
