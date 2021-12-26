import {AUTH_REQ,AUTH_SUCCESS,AUTH_FAILURE} from '../types';


export const authenticate=()=>{
    return {
        type:AUTH_REQ
    }
}


export const authSuccess = (content)=>{
    localStorage.setItem('USER_KEY',content.username);
    localStorage.setItem('USERNAME',content.username);
    localStorage.setItem('PASSWORD',content.password);
    localStorage.setItem('USER_ID',content.userid);
    localStorage.setItem('CUSTOMER_ID',content.customerid);
    localStorage.setItem('BANKACCOUNTNAME',content.bankaccount.bankname);
    localStorage.setItem('CARDNUMBER',content.bankaccount.cardnumber);
    localStorage.setItem('CVC',content.bankaccount.cvc);
    localStorage.setItem('EXPDATE',content.bankaccount.expdate);

    return {
        type:AUTH_SUCCESS,
        payload:content
    }
}

export const authFailure=(error)=>{
    return {
        type:AUTH_FAILURE,
        payload:error
    }
}

