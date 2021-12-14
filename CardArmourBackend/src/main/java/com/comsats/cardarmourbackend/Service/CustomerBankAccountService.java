package com.comsats.cardarmourbackend.Service;

import com.comsats.cardarmourbackend.Repository.CustomerBankAccountRepository;
import com.comsats.cardarmourbackend.model.CustomerBankAccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerBankAccountService {

    @Autowired
    private CustomerBankAccountRepository customerBankAccountRepository;

    public void link(int customerid,int accountid){
        try{
            CustomerBankAccount customerBankAccount = new CustomerBankAccount();
            customerBankAccount.setCbaId(ID_Generator.generateID());
            customerBankAccount.setCustomerid(customerid);
            customerBankAccount.setAccountid(accountid);
            customerBankAccountRepository.linkCustomerToAccount(customerBankAccount.getCbaId(),customerBankAccount.getCustomerid(),customerBankAccount.getAccountid());
        } catch(Exception e){
        }
    }

    public void delete(int accountid){
        try{
            customerBankAccountRepository.deleteLink(accountid);
        } catch(Exception e){
        }
    }

}
