import axios from "axios";

export const getCountTransactions = (username) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/getCountTransactions",
    params: {username},
   });
 };

export const getSpending = (username) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/getSpending",
    params: {username},
   });
 };

export const deleteCustomer = (username) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/deleteCustomer",
    params: {username},
   });
 };

export const updateUser = (username, data) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/updateUser",
    params: {username},
    data: data
   });
 };

export const getCustomerOnUsername = (username) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/getCustomerOnUsername",
    params: {username},
   });
 };

export const addSetting = (data, username) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/addSetting",
    params: {username},
    data: data
   });
 };

export const getSetting = (username) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/getSetting",
    params: {username},
   });
 };

export const getFeedback = (username) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/getFeedback",
    params: {username},
   });
 };

export const getFiveTransactions = (username) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/getFiveTransactions",
    params: {username},
   });
 };

export const getTransactions = (username) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/getTransactions",
    params: {username},
   });
 };

export const addFeedback = (username,data) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/addFeeedback",
    params: {username},
    data: data
   });
 };

export const deleteVirtualCard = (username) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/deleteVirtualCard",
    params: {username}
   });
 };

export const deleteBankAccount = (username) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/deleteBankAccount",
    params: {username}
   });
 };

export const getVirtualCard = (username) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/getVirtualCard",
    params: {username}
   });
 };

export const addVirtualCard = (username,expdate) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/addVirtualCard",
    params: {username,expdate}
   });
 };


export const getBankAccount = (username) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/getBankAccount",
    params: {username}
   });
 };

export const addBankAccount = (data,username,password) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/addBankAccount",
    data: data,
    params: {username,password}
   });
 };

export const addNewCustomer = (data) => {
  return axios({
    method: "POST",
    url: "http://localhost:8081/addNewCustomer",
    data: data,
   });
 };

export const userLogin = (authRequest) => {
  return axios({
    method: "POST",
    url: "http://localhost:8080/login",
    data: authRequest,
  });
};

export const countriesAPI = async () => {
  return await axios({
    method: "GET",
    url: "http://localhost:8080/getCountries",
  });
};

export const login = async (username, password) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8081/login",
    params: {username, password}
  });
};



export const citiesAPI = async (countryid) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/getCities",
    params: {countryid}
  });
};

export const systemUserAPI = async (data) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/addNewUser",
    data: data,
  });
};

export const addCustomer = async (data) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/addNewCustomerData",
    data: data,
  });
};

export const userID = async (data) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/getUserId",
    data: data,
  });
};

export const addPayment = async (data) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/addPaymentMethod",
    data: data,
  });
};

export const getCustomerId = async (userid) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/getCustomerIdByUserId",params: {userid}
  });
};

export const linkCustomer = async (accountid,customerid) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/linkCustomerToBankAccount", 
    params: {customerid,accountid}
  });
};

// export const getBankAccount = async (userid) => {
//   return await axios({
//     method: "POST",
//     url: "http://localhost:8080/getBankPaymentById", 
//     params: {userid}
//   });
// };

export const deletePaymentMethod = async (accountid) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/deletePaymentMethod", 
    params: {accountid}
  });
};

export const generateVirtualCard = async (cardholdername,expdate) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/generateVirtualCard", 
    params: {cardholdername,expdate}
  });
};

export const linkVirtualCard = async (bankaccountid,virtualcardid) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/linkcards", 
    params: {bankaccountid,virtualcardid}
  });
};

// export const getVirtualCard = async (accountid) => {
//   return await axios({
//     method: "POST",
//     url: "http://localhost:8080/getVirtualCard", 
//     params: {accountid}
//   });
// };



// export const deleteVirtualCard = async (cardid) => {
//   return await axios({
//     method: "POST",
//     url: "http://localhost:8080/deleteVirtualCard", 
//     params: {cardid}
//   });
// };

// export const getFiveTransactions = async (virtualcardid) => {
//   return await axios({
//     method: "POST",
//     url: "http://localhost:8080/getFiveTransactions", 
//     params: {virtualcardid}
//   });
// };

// export const getTransactions = async (virtualcardid) => {
//   return await axios({
//     method: "POST",
//     url: "http://localhost:8080/getFiveTransactions", 
//     params: {virtualcardid}
//   });
// };

// export const addFeedback = async (data) => {
//   return await axios({
//     method: "POST",
//     url: "http://localhost:8080/addFeedback",
//     data: data,
//   });
// };

export const totalSpending = async (virtualcardid) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/getTotalSpending", 
    params: {virtualcardid}
  });
};

export const totlaTransactions = async (virtualcardid) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/getTotalTransactions", 
    params: {virtualcardid}
  });
};

// export const getFeedback = async (customerid) => {
//   return await axios({
//     method: "POST",
//     url: "http://localhost:8080/getFeedbackById", 
//     params: {customerid}
//   });
// };

export const getSms = async (customerid) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/getSmsHistory", 
    params: {customerid}
  });
};

export const getSettings = async (userid) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/getSetting", 
    params: {userid}
  });
};

export const getUser = async (userid) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/getUser", 
    params: {userid}
  });
};

export const getCustomer = async (userid) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/getCustomer", 
    params: {userid}
  });
};

export const updateCustomer = async (data) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/updateCustomer", 
    data: data,
  });
};

export const addPhoneNumber = async (data) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/addPhoneNumber", 
    data: data,
  });
};

export const getPhonenumber = async (customerid) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/getPhoneNumber", 
    params: {customerid}
  });
};

export const getCityByCustomer = async (customerid) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/getCityByCustomer", 
    params: {customerid}
  });
};

export const getCountryByCustomer = async (customerid) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/getCountryByCustomer", 
    params: {customerid}
  });
};

// export const updateUser = async (data) => {
//   return await axios({
//     method: "POST",
//     url: "http://localhost:8080/updateUser", 
//     data: data
//   });
// };

export const updateSetting = async (data) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/updateSetting", 
    data: data
  });
};

export const setSetting = async (data) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/addSetting", 
    data: data
  });
};

export const getAllReply = async () => {
  return await axios({
    method: "GET",
    url: "http://localhost:8080/getAllReply", 
  });
};

export const deleteUser = async (userid) => {
  return await axios({
    method: "POST",
    url: "http://localhost:8080/deleteUser", 
    params: {userid}
  });
};















