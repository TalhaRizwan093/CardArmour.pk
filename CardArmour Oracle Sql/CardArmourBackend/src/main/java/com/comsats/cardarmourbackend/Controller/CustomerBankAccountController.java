package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Service.CustomerBankAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.*;


@CrossOrigin("*")
@RestController
public class CustomerBankAccountController {

    @Autowired
    private CustomerBankAccountService customerBankAccountService;

    @PostMapping("/linkCustomerToBankAccount")
    public void link(@RequestParam int customerid,int accountid){
        customerBankAccountService.link(customerid,accountid);
    }

    @PostMapping("/deleteCustomerBankLink")
    public void delete(@RequestParam int accountid){
        customerBankAccountService.delete(accountid);
    }

}
