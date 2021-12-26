import { Container, Row, Col, Form } from "react-bootstrap";
import { Dropdown } from "primereact/dropdown";
import "./setting.css";
import { Button } from "primereact/button";
import { Calendar } from "primereact/calendar";
import { InputText } from "primereact/inputtext";
import React, { useState } from "react";
import { Password } from "primereact/password";
import { useNavigate } from "react-router-dom";
import { deleteCustomer, getCustomerOnUsername,addSetting , setSetting, updateSetting, getSetting, getUser, getCustomer, updateCustomer, getPhonenumber, countriesAPI, citiesAPI, getCityByCustomer, getCountryByCustomer, updateUser, deleteUser } from "../api/authenticationService"

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
  const [phonenumber_, setPhonenumber] = useState(null);
  const [phone, setPhone] = useState(null);
  const [country_i, setCountry] = useState(null);
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
  const mode_ = [
    { language: "Light", code: "light" },
    { language: "Dark", code: "dark" },
  ];

  const countries = [{ name: "Pakistan" }, { name: "India" }, { name: "Bengladesh" }, { name: "China" }];
  const cities = [{ name: "Islamabad" }, { name: "Rawalpindi" }, { name: "Dehli" }, { name: "Dhaka" }];

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
    let username = getToken();
    userid = getUserId();
    customerid = getCustomerId();
    if (userName === "undefined" || userName === null) {
      navigate("/");
    }
    getSetting(username).then((response) => {
      setLanguage(response.data.language)
      setLanguage_p(response.data.language)
      setTimeFormat(response.data.timeformat)
      setTimeFormat_p(response.data.timeformat)
      setMode(response.data.mode)
      setMode_p(response.data.mode)
      lang = response.data.language
      time = response.data.timeformat
      LDmode = response.data.mode
      console.log("language",lang)
      console.log("time",time)
      console.log("LDmode",LDmode)
      if (LDmode === null && time === null && lang === null) {
        console.log("abc")
        setSettingCheck(true);
      }
    })
    // getUser(username).then((response) => {
    //   setPassword(response.data.password);
    //   setUserName(response.data.username);
    // })
    getCustomerOnUsername(username).then((response) => {
      setPassword(response.data.password);
      setUserName(response.data.username);
      setName(response.data.name)
      setGender_p(response.data.gender)
      setGender_i(response.data.gender)
      setCnic(response.data.cnic)
      setDob(response.data.dateofbirth)
      setEmail(response.data.email)
      setCity(response.data.location.city)
      setCountry(response.data.location.country)
      setAge(response.data.age)
      setPhonenumber(response.data.phonenumber);
      setCity_p(response.data.location.city);
      setCountry_p(response.data.location.country)
      console.log(response)
    })
    // getCustomer(userid).then((response) => {
    //   setName(response.data.name)
    //   setGender_p(response.data.gender)
    //   setGender_i(response.data.gender)
    //   setCnic(response.data.cnic)
    //   setDob(response.data.dob)
    //   setEmail(response.data.email)
    //   setCity(response.data.city)
    //   setAge(response.data.age)
    // })
    // getPhonenumber(customerid).then((response) => {
    //   setPhonenumber(response.data.phonenumber);
    // })


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
    let language, timeformat, mode;
    console.log("check ",settingCheck)
    let cityid;
    if(settingCheck === true){
      // if (gender_i.name === undefined || gender_i.name === null) {
      //   gender = gender_i;
      // }
      // else {
      //   gender = gender_i.name;
      // }
      // console.log("cityabc",city_i)
      // if (city_i === undefined || city_i === null) {
      //   cityid = city_i;
      // }
      // else {
      //   cityid = city_i.cityid;
      // }
      
      let city;
      let country;
      let phonenumber;
      if (selectedLanguage.language === undefined || selectedLanguage.language === null) {
        console.log("selectedlanguage")
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
        mode = selectedMode;
      }
      else {
        mode = selectedMode.language;
      }


      if (city_i.name === undefined || city_i.name === null) {
        city = city_i;
      }
      else {
        city = city_i.name;
      }

      if (country_i.name === undefined || country_i.name === null) {
        country = country_i;
      }
      else {
        country = country_i.name;
      }

      if (gender_i.name === undefined || gender_i.name === null) {
        gender = gender_i;
      }
      else {
        gender = gender_i.name;
      }

      if (typeof phonenumber_ === 'string') {
        phonenumber = [phonenumber_];
      }
      else {
        phonenumber = phonenumber_ ;
      }
  
      //gender = gender_i.name
      //let city = country_i.name
      //let country = city_i.name
      let dateofbirth = dob
      const location = {city, country}
      //const userdata = { username, password, userid }
      const settingData = { language, timeformat, mode }
      let oldusername = getToken();
      const data = {location, name, gender, cnic,phonenumber, dateofbirth, email, username, password}
      updateUser(oldusername, data).then((response) => {
        addSetting(settingData, oldusername).then((response) => {
          navigate('/')
        })
      })
    // updateCustomer(data).then((response) => {
    //   updateUser(userdata).then((response) => {
    //     navigate("/homepage")
    //   })
    // })
    }
    else{
      // if (gender_i.name === undefined || gender_i.name === null) {
      //   gender = gender_i;
      // }
      // else {
      //   gender = gender_i.name;
      // }
      let city;
      let country;
      let phonenumber;
      if (selectedLanguage.language === undefined || selectedLanguage.language === null) {
        console.log("selectedlanguage")
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
        mode = selectedMode;
      }
      else {
        mode = selectedMode.language;
      }


      if (city_i.name === undefined || city_i.name === null) {
        city = city_i;
      }
      else {
        city = city_i.name;
      }

      if (country_i.name === undefined || country_i.name === null) {
        country = country_i;
      }
      else {
        country = country_i.name;
      }

      if (gender_i.name === undefined || gender_i.name === null) {
        gender = gender_i;
      }
      else {
        gender = gender_i.name;
      }

      if (typeof phonenumber_ === 'string') {
        phonenumber = [phonenumber_];
      }
      else {
        phonenumber = phonenumber_ ;
      }
  
      //gender = gender_i.name
      //let city = country_i.name
      //let country = city_i.name
      let dateofbirth = dob
      const location = {city, country}
      //const userdata = { username, password, userid }
      const settingData = { language, timeformat, mode }
      let oldusername = getToken();
      const data = {location, name, gender, cnic,phonenumber, dateofbirth, email, username, password}
      updateUser(oldusername, data).then((response) => {
        addSetting(settingData, oldusername).then((response) => {
          navigate('/')
        })
      })
      
      // updateCustomer(data).then((response) => {
      //   updateUser(userdata).then((response) => {

      //   })
      // })
    }

  };

  const onCountryChange = (e) => {
    e.preventDefault();
    setCountry(e.value)
  }

  const onCityChange = (e) => {
    e.preventDefault();
    setCity(e.value)

  }

  const handleDelete = (e) => {
    e.preventDefault();
    deleteCustomer(username).then((response) => {
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
                options={mode_}
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
                    value={phonenumber_}
                    onChange={(e) => setPhonenumber(e.target.value)}
                    placeholder={phonenumber_} />
    
                </div>
                <div className="p-field p-col-6">
                  <label htmlFor="email" style={{ marginLeft: "44%" }}>
                    Email
                  </label>
                  <InputText
                    id="Email"
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
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
