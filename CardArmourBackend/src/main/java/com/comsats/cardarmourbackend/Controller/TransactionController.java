package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Repository.TransactionRepository;
import com.comsats.cardarmourbackend.model.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin("*")
@RestController
public class TransactionController {

    @Autowired
    private TransactionRepository transactionRepository;

    @PostMapping("/getAllTransactions")
    public List<Transaction> GetAll(@RequestParam int virtualcardid){
        try{
            return transactionRepository.getAllTransactionByVirtualcardid(virtualcardid);
        } catch (Exception e){
            return null;
        }
    }

    @PostMapping("/getFiveTransactions")
    public List<Transaction> GetFive(@RequestParam int virtualcardid){
        try{
            return transactionRepository.getFiveLatestTransactions(virtualcardid);
        } catch (Exception e){
            return null;
        }
    }

    @PostMapping("/getTotalSpending")
    public int GetSpending(@RequestParam int virtualcardid){
        try{
            return transactionRepository.getTotalSpendingByVirtualcardid(virtualcardid);
        } catch(Exception e){
            return 0;
        }
    }

    @PostMapping("/getTotalTransactions")
    public int GetTotalTransactions(@RequestParam int virtualcardid){
        try{
            return transactionRepository.getTotalTransactionsByVirtualcardid(virtualcardid);
        } catch (Exception e){
            return 0;
        }
    }


}
