package com.comsats.cardarmourbackend.Service;

import com.comsats.cardarmourbackend.Repository.BankAccountRepository;
import com.comsats.cardarmourbackend.model.BankAccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

@Service
public class BankAccountService {

    @Autowired
    private BankAccountRepository bankAccountRepository;

    public BankAccount getBankAccountByUserId(int userid){
        try{
            return bankAccountRepository.getBankAccountByUserId(userid);
        } catch(Exception e){
            return null;
        }
    }

    public int addPaymentMethod(BankAccount account){
        try{
            account.setAccountid(ID_Generator.generateID());
            bankAccountRepository.addPaymentMethod(account.getAccountid(),account.getCardholdername(),account.getBankname(),account.getCardnumber(),account.getCvc(),account.getExpdate());
        } catch(Exception e){
        }
        return account.getAccountid();
    }

    public void deletePaymentMethod(int accountid){
        try{
            bankAccountRepository.deletePaymentMethod(accountid);
        }  catch(Exception e){
        }
    }

}
