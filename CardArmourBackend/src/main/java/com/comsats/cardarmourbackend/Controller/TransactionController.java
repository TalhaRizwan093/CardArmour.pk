package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Service.TransactionService;
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
    private TransactionService transactionService;

    @PostMapping("/getAllTransactions")
    public List<Transaction> GetAll(@RequestParam int virtualcardid){
        return transactionService.GetAll(virtualcardid);
    }

    @PostMapping("/getFiveTransactions")
    public List<Transaction> GetFive(@RequestParam int virtualcardid){
        return transactionService.GetFive(virtualcardid);
    }

    @PostMapping("/getTotalSpending")
    public int GetSpending(@RequestParam int virtualcardid){
       return transactionService.GetSpending(virtualcardid);
    }

    @PostMapping("/getTotalTransactions")
    public int GetTotalTransactions(@RequestParam int virtualcardid){
       return transactionService.GetTotalTransactions(virtualcardid);
    }

}