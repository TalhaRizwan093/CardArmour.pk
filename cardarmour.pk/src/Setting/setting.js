import { Container, Row, Col, Form } from "react-bootstrap";
import { Dropdown } from "primereact/dropdown";
import "./setting.css";
import { Button } from "primereact/button";
import { Calendar } from "primereact/calendar";
import { InputText } from "primereact/inputtext";
import React, { useState } from "react";
import { Password } from "primereact/password";
import { useNavigate } from "react-router-dom";
import { getSettings, getUser, getCustomer, updateCustomer, getPhonenumber,countriesAPI, citiesAPI, getCityByCustomer, getCountryByCustomer } from "../api/authenticationService"

const Setting = () => {
  const [selectedLanguage, setLanguage] = useState(null);
  const [selectedTimeFormat, setTimeFormat] = useState(null);
  const [selectedMode, setMode] = useState(null);
  const [name, setName] = useState(null);
  const [gender, setGender] = useState(null);
  const [cnic, setCnic] = useState(null);
  const [dob, setDob] = useState(null);
  const [email, setEmail] = useState(null);
  const [phonenumber, setPhonenumber] = useState(null);
  const [country, setCountry] = useState(null);
  const [countries, setCountries] = useState(null);
  const [cities, setCities] = useState(null);
  const [city, setCity] = useState(null);

  const [password, setPassword] = useState("");
  const [username, setUserName] = useState("");
  const navigate = useNavigate();

  const languages = [
    { language: "English", code: "EN" },
    { language: "日本", code: "JP" },
    { language: "中國人", code: "CN" },
    { language: "हिंदी", code: "HN" },
  ];
  const timeformat = [
    { language: "12 Hour", code: "12hr" },
    { language: "24 Hour", code: "24hr" },
  ];
  const mode = [
    { language: "Light", code: "light" },
    { language: "Dark", code: "dark" },
  ];

  const getToken = () => {
    return localStorage.getItem("USER_KEY");
  };
  const getUserId = () => {
    return localStorage.getItem("USER_ID");
  };

  const getCustomerId = () => {
    return localStorage.getItem("C_ID");
  };

  let userName = getToken();
  let userid = getUserId();
  let customerid = getCustomerId();
  React.useEffect(() => {
    userName = getToken();
    userid = getUserId();
    customerid = getCustomerId();
    console.log(userid);
    if (userName === "undefined" || userName === null) {
      navigate("/");
    }
    getSettings(userid).then((response) => {
      console.log("setting", response)
      setLanguage(response.data.language)
      setTimeFormat(response.data.timeformat)
      setMode(response.data.lightDarkMode)
    })
    getUser(userid).then((response) => {
      setPassword(response.data.password);
      setUserName(response.data.username);
    })
    getCustomer(userid).then((response) => {
      setName(response.data.name)
      setGender(response.data.gender)
      setCnic(response.data.cnic)
      setDob(response.data.dob)
      setEmail(response.data.email)
      setCountry(response.data.city)
      setCity(response.data.country)
    })
    getPhonenumber(customerid).then((response) => {
      setPhonenumber(response.data.phonenumber);
    })
    countriesAPI().then((response) => {
      const data = response.data;
      setCountries(data);
    }
    );

    getCityByCustomer(customerid).then((response) => {
      setCity(response.data.name)
    })

    getCountryByCustomer(customerid).then((response) => {
      // console.log(response)
      // setCity(response.data.name)
    })

  }, []);

  const handleReturnHome = (e) => {
    e.preventDefault();
    navigate("/homepage");
  };

  const handleCancel = (e) => {
    e.preventDefault();
    navigate("/homepage");
  };

  const onLanguageChange = (e) => {
    setLanguage(e.value);
  };
  const onFormatChange = (e) => {
    setTimeFormat(e.value);
  };
  const onModeChange = (e) => {
    setMode(e.value);
  };

  const handleConfirm = (e) => {
    e.preventDefault();
    const data = {name, gender, cnic, dob, phonenumber, email, city, country}
  };

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


  return (
    <div
      style={{
        backgroundImage: "url(settingbackground.jpg)",
        position: "fixed",
        width: "100%",
        height: "100%",
        top: "0px",
        left: "0px",
        zIndex: "1000",
      }}
    >
      <div>
        <Row>
          <br></br>
        </Row>
        <Row>
          <Col md={2}>
            {" "}
            <Button
              onClick={handleReturnHome}
              label="Return Home"
              className="p-button-rounded p-button-warning"
              style={{ color: "black", marginLeft: "15%" }}
            />
          </Col>
          <Col md={10}>
            {" "}
            <h1 className="namesettingtag">CardArmour.pk</h1>
          </Col>
        </Row>
        <Row>
          <h3 className="namesetting" style={{ marginLeft: "47%" }}>
            Setting
          </h3>
        </Row>
        <Row>
          <Col md={4}>
            <div style={{ marginLeft: "88%", marginTop: "3%" }}>
              <p className="parasetting2">Language</p>
              <Dropdown
                inputId="languageInput"
                value={selectedLanguage}
                options={languages}
                onChange={onLanguageChange}
                placeholder={selectedLanguage}
                optionLabel="language"
              />
            </div>
          </Col>
          <Col md={4}>
            <div style={{ marginLeft: "43%", marginTop: "3%" }}>
              <p className="parasetting1">Time Format</p>
              <Dropdown
                inputId="timeFormatInput"
                value={selectedTimeFormat}
                options={timeformat}
                onChange={onFormatChange}
                placeholder={selectedTimeFormat}
                optionLabel="language"
              />
            </div>
          </Col>
          <Col md={4}>
            <div style={{ marginTop: "3%" }}>
              <p className="parasetting3">Mode</p>
              <Dropdown
                inputId="modeInput"
                value={selectedMode}
                options={mode}
                onChange={onModeChange}
                placeholder={selectedMode}
                optionLabel="language"
              />
            </div>
          </Col>
        </Row>
        <Row>
          <Col md={2}></Col>
          <Col md={8}>
            <h5 style={{ marginLeft: "40%", marginTop: "2%" }}>
              Change Username/Password
            </h5>
            <span
              className="p-float-label"
              style={{
                marginLeft: "27.5%",
                marginBottom: "4%",
                marginTop: "3%",
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
                marginLeft: "55%",
                marginTop: "-7.3%",
                marginBottom: "3%",
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
          </Col>
          <Col md={2}></Col>
        </Row>
        <Row>
          <Col md={2}></Col>
          <Col md={8}>
            <h5 style={{ marginLeft: "43.5%" }}>Change User Data</h5>
            <div>
              <div className="p-fluid p-formgrid p-grid">
                <div className="p-field p-col-12 p-md-12">
                  <label htmlFor="firstname" style={{ marginLeft: "48%" }}>
                    Name
                  </label>
                  <InputText
                    id="name"
                    value={name}
                    onChange={(e) => setName(e.target.value)}
                    type="text" placeholder="" />
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
                    value={gender}
                    // options={states}
                    onChange={(e) => setGender(e.target.value)}
                    placeholder={gender}
                    optionLabel={gender}
                  />
                </div>
                <div className="p-field p-col-12 p-md-7">
                  <label
                    htmlFor="cnic"
                    style={{ marginLeft: "40%", marginTop: "1.5%" }}
                  >
                    CNIC
                  </label>
                  <InputText
                    value={cnic}
                    onChange={(e) => setCnic(e.target.value)}
                    type="text" placeholder=""
                    id="cnic" />
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
                    value={dob}
                    onChange={(e) => setDob(e.value)}
                    placeholder={dob}
                  />
                </div>
                <div className="p-field p-col-12 p-md-6">
                  <label htmlFor="number" style={{ marginLeft: "40%" }}>
                    Phone Number
                  </label>
                  <InputText
                    id="phone Number"
                    value={phonenumber}
                    onChange={(e) => setPhonenumber(e.value)} />
                </div>
                <div className="p-field p-col-6">
                  <label htmlFor="email" style={{ marginLeft: "44%" }}>
                    Email
                  </label>
                  <InputText
                    id="Email"
                    value={email}
                    onChange={(e) => setEmail(e.value)}
                  />
                </div>
                <div className="p-field p-col-12 p-md-6">
                  <label htmlFor="country" style={{ marginLeft: "43%" }}>
                    Country
                  </label>
                  <Dropdown
                  inputId="state"
                  value={country}
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
                  value={city}
                  options={cities}
                  onChange={onCityChange}
                  placeholder={city}
                  optionLabel="name"
                  />
                </div>
              </div>
              <Button
                onClick={handleConfirm}
                label="Confirm"
                className="p-button-raised p-button-success"
                style={{
                  marginLeft: "40%",
                  marginTop: "2%",
                  marginBottom: "5%",
                }}
              />
              <Button
                onClick={handleCancel}
                label="Cancel"
                className="p-button-raised p-button-danger"
                style={{ marginLeft: "6%", marginBottom: "5%" }}
              />
            </div>
          </Col>
          <Col md={2}></Col>
        </Row>
      </div>
    </div>
  );
};

export default Setting;
