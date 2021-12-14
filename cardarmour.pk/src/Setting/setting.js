import { Container, Row, Col, Form } from "react-bootstrap";
import { Dropdown } from "primereact/dropdown";
import "./setting.css";
import { Button } from "primereact/button";
import { Calendar } from "primereact/calendar";
import { InputText } from "primereact/inputtext";
import React, { useState } from "react";
import { Password } from "primereact/password";
import { useNavigate } from "react-router-dom";
import { setSetting, updateSetting, getSettings, getUser, getCustomer, updateCustomer, getPhonenumber, countriesAPI, citiesAPI, getCityByCustomer, getCountryByCustomer, updateUser, deleteUser } from "../api/authenticationService"

const Setting = () => {
  const [selectedLanguage, setLanguage] = useState(null);
  const [selectedLanguage_p, setLanguage_p] = useState(null);
  const [selectedTimeFormat, setTimeFormat] = useState(null);
  const [selectedTimeFormat_p, setTimeFormat_p] = useState(null);
  const [selectedMode, setMode] = useState(null);
  const [selectedMode_p, setMode_p] = useState(null);
  const [name, setName] = useState(null);
  const [gender_i, setGender_i] = useState(null);
  const [gender_p, setGender_p] = useState(null);
  const [cnic, setCnic] = useState(null);
  const [dob, setDob] = useState(null);
  const [email, setEmail] = useState(null);
  const [phonenumber, setPhonenumber] = useState(null);
  const [country_i, setCountry] = useState(null);
  const [countries, setCountries] = useState(null);
  const [cities, setCities] = useState([]);
  const [city_i, setCity] = useState(null);
  const [city_p, setCity_p] = useState(null);
  const [country_p, setCountry_p] = useState(null);
  const [age, setAge] = useState(null);
  const [settingCheck, setSettingCheck] = useState(false);
  const [password, setPassword] = useState("");
  const [username, setUserName] = useState("");
  const navigate = useNavigate();
  let gender = null;

  const genders = [
    { name: 'Male' },
    { name: 'Female' },
  ];

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

  const onGenderChange = (e) => {
    setGender_i(e.value)

  }

  let userName = getToken();
  let userid = getUserId();
  let customerid = getCustomerId();
  let lang,time,LDmode;
  React.useEffect(() => {
    userName = getToken();
    userid = getUserId();
    customerid = getCustomerId();
    if (userName === "undefined" || userName === null) {
      navigate("/");
    }
    getSettings(userid).then((response) => {
      setLanguage(response.data.language)
      setLanguage_p(response.data.language)
      setTimeFormat(response.data.timeformat)
      setTimeFormat_p(response.data.timeformat)
      setMode(response.data.lightDarkMode)
      setMode_p(response.data.lightDarkMode)
      lang = response.data.language
      time = response.data.timeformat
      LDmode = response.data.lightDarkMode
      if (LDmode === undefined && time === undefined && lang === undefined) {
        setSettingCheck(true);
      }
    })
    getUser(userid).then((response) => {
      setPassword(response.data.password);
      setUserName(response.data.username);
    })
    getCustomer(userid).then((response) => {
      setName(response.data.name)
      setGender_p(response.data.gender)
      setGender_i(response.data.gender)
      setCnic(response.data.cnic)
      setDob(response.data.dob)
      setEmail(response.data.email)
      setCity(response.data.city)
      setAge(response.data.age)
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
      setCity_p(response.data.name);
      setCity(response.data);

    })

    getCountryByCustomer(customerid).then((response) => {

      setCountry_p(response.data.name)
      setCountry(response.data.name)
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
    console.log("settingCheck",settingCheck)
    let language, timeformat, lightDarkMode;
    console.log("check ",settingCheck)
    let cityid;
    if(settingCheck === true){
      if (gender_i.name === undefined || gender_i.name === null) {
        gender = gender_i;
      }
      else {
        gender = gender_i.name;
      }
      console.log("cityabc",city_i)
      if (city_i === undefined || city_i === null) {
        cityid = city_i;
      }
      else {
        cityid = city_i.cityid;
      }
      

    const data = { name, gender, cnic, dob, age, phonenumber, email, cityid, userid }
    const userdata = { username, password, userid }
    language = selectedLanguage.language;
    timeformat = selectedTimeFormat.language;
    lightDarkMode = selectedMode.language;
    const settingData = { language, timeformat, lightDarkMode, userid }
    
    console.log("setting", settingData)
    updateCustomer(data).then((response) => {
      updateUser(userdata).then((response) => {
        setSetting(settingData).then((response) => {
          console.log("add setting",settingData)
        })
        navigate("/homepage")
      })
    })
    }
    else{
      if (gender_i.name === undefined || gender_i.name === null) {
        gender = gender_i;
      }
      else {
        gender = gender_i.name;
      }
      if (selectedLanguage.language === undefined || selectedLanguage.language === null) {
        language = selectedLanguage;
      }
      else {
        language = selectedLanguage.language;
      }
      if (selectedTimeFormat.language === undefined || selectedTimeFormat.language === null) {
        timeformat = selectedTimeFormat;
      }
      else {
        timeformat = selectedTimeFormat.language;
      }
      if (selectedMode.language === undefined || selectedMode.language === null) {
        lightDarkMode = selectedMode;
      }
      else {
        lightDarkMode = selectedMode.language;
      }
      if (cityid.name === undefined || cityid.name === null) {
        cityid = city_i;
      }
      else {
        cityid = city_i.cityid;
      }
  
      const data = { name, gender, cnic, dob, age, phonenumber, email, cityid, userid }
      const userdata = { username, password, userid }
      const settingData = { language, timeformat, lightDarkMode, userid }
      console.log("setting", settingData)
      updateCustomer(data).then((response) => {
        updateUser(userdata).then((response) => {
          updateSetting(settingData).then((response) => {
          })
          navigate("/homepage")
        })
      })
    }

  };

  const onCountryChange = (e) => {
    e.preventDefault();
    console.log("coutnry change", e.value)
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
    e.preventDefault();
    setCity(e.value)

  }

  const handleDelete = (e) => {
    e.preventDefault();
    userid = getUserId();
    deleteUser(userid).then((response) => {
      navigate('/')
    })
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
                placeholder={selectedLanguage_p}
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
                placeholder={selectedTimeFormat_p}
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
                placeholder={selectedMode_p}
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
                    value={gender_i}
                    options={genders}
                    onChange={onGenderChange}
                    placeholder={gender_p}
                    optionLabel="name"
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
                    value={country_i}
                    options={countries}
                    onChange={onCountryChange}
                    placeholder={country_p}
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
                    placeholder={city_p}
                    optionLabel="name"
                  />
                </div>
                <Button
                  onClick={handleDelete}
                  label="DELETE ACCOUNT"
                  className="p-button-raised p-button-danger"
                  style={{ marginTop: "1%", marginBottom: "1.5%" }}
                />
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
