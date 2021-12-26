package com.comsats.cardarmourbackend.Controller;


import com.comsats.cardarmourbackend.Service.SmsService;
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
    private SmsService smsService;

    @PostMapping("/getSmsHistory")
    public List<Sms> getSms(@RequestParam int customerid){
        return smsService.getSms(customerid);
    }
}