import axios from 'axios';

export const userLogin=(authRequest)=>{
    return axios({
        'method':'POST',
        'url':`${process.env.hostUrl||'http://localhost:8081'}/login/auth`,
        'data':authRequest
    })
}