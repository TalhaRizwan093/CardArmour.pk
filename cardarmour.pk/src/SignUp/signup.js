import React, { useState } from "react";
import { InputText } from "primereact/inputtext";
import { Button } from "primereact/button";
import { Checkbox } from "primereact/checkbox";
import { RadioButton } from "primereact/radiobutton";
import { Dropdown } from "primereact/dropdown";
import { InputTextarea } from "primereact/inputtextarea";
import { Card } from "primereact/card";
import { Calendar } from "primereact/calendar";
import "./signup.css";
import { Container, Row, Col, Form } from "react-bootstrap";
import { Navigate, useNavigate } from "react-router-dom";
import {countriesAPI} from "../api/authenticationService";
import {citiesAPI} from "../api/authenticationService";
import {systemUserAPI} from "../api/authenticationService";
 import {userID} from "../api/authenticationService";
 import {addCustomer, addPhoneNumber} from "../api/authenticationService";
 import {Alert} from 'react-bootstrap';
 

const SignUp = () => {
  const [firstname, setFirstname] = useState(null);
  const [lastname, setLastname] = useState(null);
  const [gender_i, setGender] = useState(null);
  const [cnic, setCnic] = useState(null);
  const [dob1, setDob] = useState(null);
  const [phonenumber, setPhonenumber] = useState(null);
  const [email, setEmail] = useState(null);
  const [country_i, setCountry] = useState(null);
  const [city_i, setCity] = useState(null);
  const [username, setUsername] = useState(null);
  const [password, setPassword] = useState(null);
  const [isPending, setIsPending] = useState(null);
  const [countries, setCountries] = useState(null);
  const [cities, setCities] = useState(null);
  const [age, setAge] = useState(null);
  const navigate = useNavigate();

  const genders = [
    { name: 'Male'},
    { name: 'Female'},
  ];

  React.useEffect(()=>{
    setIsPending(true);
     countriesAPI().then((response) => {
      const data = response.data;
      console.log("countries",data)
      setCountries(data);
    }
    );

    setIsPending(false);
  },[])



  

  const onGenderChange = (e) => {
    setGender(e.value)
    
  }

  const onCountryChange = (e) => {
    console.log(e.value)
    setCountry(e.value)
    let countryid = e.value.countryid
    citiesAPI(countryid).then((response) => {
      console.log("city response", response)
      const data = response.data;
      setCities(data);
    }
    );
    
  }

  const onCityChange = (e) => {
    setCity(e.value)
    
  }

  const handleCancel = (e) =>{

    e.preventDefault();
    navigate('/')

  }

  const handleSubmit = (e) => {
    e.preventDefault();
    const systemUser = {username, password}
    const cityid = city_i.cityid
    const gender = gender_i.name
    const name = firstname +' ' + lastname;
    const dob = "2000-12-01"
    let customer = {name, gender, cnic, dob, email, cityid,age}
    console.log("system user", systemUser)
    console.log("customer",customer )
    let userid = null
    systemUserAPI(systemUser).then((response) => {
      if(response.data){
        console.log("systemuser response",response)
        userID(systemUser).then((response) => {

          console.log("id get response",response)
          userid = response.data
          let customer = {name, gender, cnic, dob, email, cityid,userid,age}
          console.log("final customer",customer )
          addCustomer(customer).then((response) => {
            console.log("customer",response)
            let customerid = response.data;
            const data = {customerid,phonenumber}
            addPhoneNumber(data).then((response) => {
              navigate('/');
            })
            
          })
        })
      }

    })
    

    


  }

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
      {isPending === false && (
        
        <div>
      <Row>
        <br></br>
      </Row>
      <Row>
        <h1 className="name">CardArmour.pk</h1>
      </Row>
      <Row>
        <Col xs={2}>
          <Card
            style={{
              borderRadius: "20px",
              marginLeft: "20%",
              marginTop: "30%",
              backgroundColor: "white",
            }}
          >
            <p style={{ textAlign: "center", fontStyle: "italic" }}>
              Did you know?
            </p>
            <img
              src="thief.jpg"
              width="100px"
              height="100px"
              style={{ marginLeft: "25%" }}
            ></img>
            <p style={{ textAlign: "center", marginTop: "12%" }}>
              Information of more than 100 Million Credit and Debit card users
              has been stolen and released on the dark web just in the 1st week
              of 2021!{" "}
            </p>
            <a
              href="https://gadgets.ndtv.com/internet/news/juspay-credit-debit-cardholders-data-leak-india-100-million-impact-dark-web-2347184"
              target="_blank"
              style={{ marginLeft: "28%", color: "black" }}
            >
              Learn More
            </a>
          </Card>
        </Col>
        <Col xs={10}>
          <Card
            style={{
              borderRadius: "3%",
              marginTop: "3%",
              marginLeft: "5.5%",
              marginRight: "25%",
              backgroundColor: "rgb(238, 252, 255)",
            }}
          >
            <Row>
              <Col md={9}>
                <div className="SignUpTag">Sign Up</div>
              </Col>
              <Col md={3}>
                <Button
                  icon="pi pi-times"
                  className="p-button-rounded p-button-danger p-button-text"
                  style={{
                    marginLeft: "78%",
                    marginBottom: "6%",
                    marginTop: "-5%",
                  }}
                />
              </Col>
            </Row>

            <div className="p-fluid p-formgrid p-grid">
              <div className="p-field p-col-12 p-md-6">
                <label htmlFor="firstname" style={{ marginLeft: "48%" }}>
                  Firstname
                </label>
                <InputText
                  value={firstname}
                  onChange={(e) => setFirstname(e.target.value)}
                  id="firstname" type="text" placeholder="e.g. John" />
              </div>
              <div className="p-field p-col-12 p-md-6">
                <label htmlFor="lastname" style={{ marginLeft: "48%" }}>
                  Lastname
                </label>
                <InputText 
                  value={lastname}
                  onChange={(e) => setLastname(e.target.value)}
                  id="lastname" type="text" placeholder="e.g. Wich" />
              </div>
              <div
                className="p-field p-col-12 p-md-3"
                style={{ marginTop: "-0.7%" }}
              >
                <label htmlFor="gender" style={{ marginLeft: "40%" }}>
                  Gender
                </label>
                <Dropdown
                  inputId="gender"
                  value={gender_i}
                  options={genders}
                  onChange={onGenderChange}
                  placeholder="Select"
                  optionLabel="name"
                />
              </div>
              <div className="p-field p-col-12 p-md-5">
                <label
                  htmlFor="cnic"
                  style={{ marginLeft: "40%", marginTop: "1.5%" }}
                >
                  CNIC
                </label>
                <InputText
                  value={cnic}
                  onChange={(e) => setCnic(e.target.value)}
                  id="cnic"
                  type="text"
                  placeholder="XXXXX-XXXXXXX-X"
                />
              </div>
              <div
                className="p-field p-col-12 p-md-2"
                style={{ marginTop: "0.1%" }}
              >
                <label htmlFor="dob" style={{ marginLeft: "15%" }}>
                  Date of Birth
                </label>
                <Calendar
                  id="dob"
                  value={dob1}
                  onChange={(e) => setDob(e.value)}
                />
              </div>
              <div
                className="p-field p-col-12 p-md-2"
                style={{ marginTop: "0.1%" }}
              >
                <label htmlFor="dob" style={{ marginLeft: "15%" }}>
                  Age
                </label>
                <InputText
                  value={age}
                  onChange={(e) => setAge(e.target.value)}
                  id="age"
                  type="text"
                  placeholder=""
                />
              </div>
              <div className="p-field p-col-12 p-md-6">
                <label htmlFor="number" style={{ marginLeft: "40%" }}>
                  Phone Number
                </label>
                <InputText
                  value={phonenumber}
                  onChange={(e) => setPhonenumber(e.target.value)}
                  id="phonenumebr"
                  type="text"
                  placeholder="XXXX-XXXXXXX"
                />
              </div>
              <div className="p-field p-col-6">
                <label htmlFor="email" style={{ marginLeft: "44%" }}>
                  Email
                </label>
                <InputText
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  id="email"
                  type="text"
                  placeholder="e.g. example@email.com"
                />
              </div>
              <div className="p-field p-col-12 p-md-6">
                <label htmlFor="country" style={{ marginLeft: "43%" }}>
                  Country
                </label>
                <Dropdown
                  inputId="state"
                  value={country_i}
                  options={countries}
                  onChange={onCountryChange}
                  placeholder="Select"
                  optionLabel="name"
                />
              </div>
              
              <div className="p-field p-col-12 p-md-6">
                <label htmlFor="city" style={{ marginLeft: "45%" }}>
                  City
                </label>
                <Dropdown
                  inputId="city"
                  value={city_i}
                  options={cities}
                  onChange={onCityChange}
                  placeholder="Select"
                  optionLabel="name"
                />
              </div>
              
              
              <div className="p-field p-col-6">
                <label htmlFor="username" style={{ marginLeft: "44%" }}>
                  Username
                </label>
                <InputText
                  value={username}
                  onChange={(e) => setUsername(e.target.value)}
                  id="username" type="text" />
              </div>
              <div className="p-field p-col-6">
                <label htmlFor="password" style={{ marginLeft: "44%" }}>
                  Password
                </label>
                <InputText 
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  id="password" type="text" />
              </div>
            </div>
            
            <Button
              onClick={handleSubmit}
              label="Sign Up"
              className="p-button-rounded p-button-outlined"
              style={{
                marginLeft: "36.5%",
                marginTop: "2%",
                marginBottom: "5%",
              }}
            />
            <Button
              onClick={handleCancel}
              label="Cancel"
              className="p-button-rounded p-button-outlined"
              style={{ color: "red", marginLeft: "10%", marginBottom: "5%" }}
            />
          </Card>
        </Col>
      </Row>
      </div>)}
    </div>
  );
};

export default SignUp;
