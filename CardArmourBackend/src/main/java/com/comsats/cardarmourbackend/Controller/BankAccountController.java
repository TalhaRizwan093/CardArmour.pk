package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Repository.BankAccountRepository;
import com.comsats.cardarmourbackend.model.BankAccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Random;

@CrossOrigin("*")
@RestController
public class BankAccountController {

    @Autowired
    private BankAccountRepository bankRepo;

    @PostMapping("/getBankPaymentById")
    public BankAccount getBankAccountByUserId(@RequestParam int userid){
        return bankRepo.getBankAccountByUserId(userid);
    }

    @PostMapping("/addPaymentMethod")
    public int addPaymentMethod(@RequestBody BankAccount account){
        try{
            account.setAccountid(generateId());
            bankRepo.addPaymentMethod(account.getAccountid(),account.getCardholdername(),account.getBankname(),account.getCardnumber(),account.getCvc(),account.getExpdate());
        } catch(Exception e){
        }
        return account.getAccountid();
    }

    @PostMapping("/deletePaymentMethod")
    public boolean deletePaymentMethod(@RequestParam int accountid){
        try{
            bankRepo.deletePaymentMethod(accountid);
        }  catch(Exception e){
        }
        return true;
    }

    @PostMapping("/getBankPaymentId")
    public int getBankAccountId(@RequestParam int userid){
        return bankRepo.getBankAccountId(userid);
    }



    private int generateId(){
        Random rand = new Random();
        return rand.nextInt(10000000);
    }
}
