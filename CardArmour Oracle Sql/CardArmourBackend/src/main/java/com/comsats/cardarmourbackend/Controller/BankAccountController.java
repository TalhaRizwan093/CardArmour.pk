package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Service.BankAccountService;
import com.comsats.cardarmourbackend.model.BankAccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin("*")
@RestController
public class BankAccountController {

    @Autowired
    private BankAccountService bankAccountService;

    @PostMapping("/getBankPaymentById")
    public BankAccount getBankAccountByUserId(@RequestParam int userid){
        return bankAccountService.getBankAccountByUserId(userid);
    }

    @PostMapping("/addPaymentMethod")
    public int addPaymentMethod(@RequestBody BankAccount account){
        return bankAccountService.addPaymentMethod(account);
    }

    @PostMapping("/deletePaymentMethod")
    public void deletePaymentMethod(@RequestParam int accountid){
       bankAccountService.deletePaymentMethod(accountid);
    }
}
