import {AUTH_REQ,AUTH_SUCCESS,AUTH_FAILURE} from '../types';

const initialState={
    user:{},
    error:'',
    loading:false
};



const auth=(state=initialState,action)=>{
    
    switch(action.type){
        case AUTH_REQ:
            return {...state,error:'',loading:true};
        case AUTH_SUCCESS:
            const data=action.payload;
            return {...state,error:'',loading:false,user:data};

        case AUTH_FAILURE:
            const error=action.payload;
            console.log("in reducer error",error);
            return {...state,loading:false,error:error};

        default:
            return state;
    }
}


export default auth;