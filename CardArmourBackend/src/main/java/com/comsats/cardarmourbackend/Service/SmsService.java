package com.comsats.cardarmourbackend.Service;

import com.comsats.cardarmourbackend.Repository.SMSRepository;
import com.comsats.cardarmourbackend.model.Sms;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class SmsService {

    @Autowired
    private SMSRepository smsRepository;

    public List<Sms> getSms(int customerid){
        try{
            return smsRepository.getSmsById(customerid);
        } catch(Exception e){
            return null;
        }
    }

}
