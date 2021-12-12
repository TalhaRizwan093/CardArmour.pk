package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Repository.SMSRepository;
import com.comsats.cardarmourbackend.model.Sms;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin("*")
@RestController
public class SmsController {

    @Autowired
    private SMSRepository smsRepository;

    @PostMapping("/getSmsHistory")
    public List<Sms> getSms(@RequestParam int customerid){
        try{
            return smsRepository.getSmsById(customerid);
        } catch(Exception e){
            return null;
        }
    }

}
