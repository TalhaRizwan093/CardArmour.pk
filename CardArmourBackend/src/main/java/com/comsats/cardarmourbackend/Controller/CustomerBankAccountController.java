package com.comsats.cardarmourbackend.Controller;


import com.comsats.cardarmourbackend.Repository.CustomerBankAccountRepository;
import com.comsats.cardarmourbackend.model.CustomerBankAccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.*;

import java.util.Random;

@CrossOrigin("*")
@RestController
public class CustomerBankAccountController {

    @Autowired
    private CustomerBankAccountRepository cbaRepo;

    @PostMapping("/linkCustomerToBankAccount")
    public boolean link(@RequestParam int customerid, @RequestParam int accountid){
        try{
            CustomerBankAccount customerBankAccount = new CustomerBankAccount();
            customerBankAccount.setCbaId(generateId());
            customerBankAccount.setCustomerid(customerid);
            customerBankAccount.setAccountid(accountid);
            cbaRepo.linkCustomerToAccount(customerBankAccount.getCbaId(),customerBankAccount.getCustomerid(),customerBankAccount.getAccountid());
        } catch(Exception e){

        }

        return true;
    }

    @PostMapping("/deleteCustomerBankLink")
    public boolean delete(@RequestParam int accountid){
        try{
            cbaRepo.deleteLink(accountid);
        } catch(Exception e){
        }
        return true;
    }



    private int generateId(){
        Random rand = new Random();
        return rand.nextInt(10000000);
    }

}
