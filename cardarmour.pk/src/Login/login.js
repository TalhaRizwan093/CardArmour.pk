import { Card } from "primereact/card";
import { Button } from "primereact/button";
import { Col, Row } from "react-bootstrap";
import "./login.css";
import React, { useState } from "react";
import { Chip } from "primereact/chip";
import { InputText } from "primereact/inputtext";
import { Password } from "primereact/password";
import { Checkbox } from "primereact/checkbox";
import {userLogin} from "../api/authenticationService";

const Login = () => {
  const [password, setPassword] = useState("");
  const [userName, setUserName] = useState("");
  const [checked, setChecked] = useState(false);
  const [isPending, setIsPending] = useState(false);

  const handleSubmit = (e) => {
    e.preventDefault();
    const data = {userName, password}
    console.log(data);
    setIsPending(true);
    userLogin(data).then((response) =>{
      if(response.status===200){
        console.log(response.data);
        setIsPending(false);

    }
    else{
        console.log("Failed");
        setIsPending(false);
        
        
    }
    }).catch((err) =>{
      if(err && err.response){
        switch(err.response.status){
            case 401:
                console.log("401 status");
                setIsPending(false);
                break;
            default:
                console.log("Failed");
                setIsPending(false);
        }
        }
        else{
             console.log("Failed");
             setIsPending(false);
        }
    });
  }

  return (
    
    <div
      style={{
        backgroundImage: "url(background.jpg)",
        height: "100vh",
        backgroundPosition: 'center',
        backgroundSize: 'cover',
        backgroundRepeat: 'no-repeat'
      }}
    >
      { isPending && <div>
        <Row>
          <br></br>
        </Row>
        <Row>
        <h1 className="pending">Loading...</h1>
        </Row>
        <Row></Row></div>}
      { isPending === false && <div>
        <Row>
          <br></br>
        </Row>
        <Row>
          <h1 className="name">CardArmour.pk</h1>
        </Row>
        <Row
          className="p-shadow-24"
          style={{ marginLeft: "35%", marginTop: "3%", marginRight: "35%" }}
        >
          <Card title="" >
            <form onSubmit={handleSubmit} >
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
                value={userName}
                onChange={(e) => setUserName(e.target.value)}
                style={{ width: "222px" }}
              />
              <label htmlFor="username">Username</label>
            </span>

            <span
              className="p-float-label"
              style={{
                marginLeft: "29%",
                //   marginBottom: "5%",
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
                marginLeft: "71%",
                marginBottom: "6%",
                marginTop: "-7%",
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
              type = "submit"
              label="LOGIN"
              className="p-button-outlined p-button-info"
              style={{ marginLeft: "42%", marginTop: "2%" }}

            />

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

              <p style={{ marginLeft: "16%" }}>Dont have an account?</p>
              <Button
                label="Sign up now"
                className="p-button-text"
                style={{ marginLeft: "19%", marginTop: "-3%" }}
                
              />
            </div>
            </form>
          </Card>
        </Row>
      </div>}
      
    </div>
  );
};

export default Login;
