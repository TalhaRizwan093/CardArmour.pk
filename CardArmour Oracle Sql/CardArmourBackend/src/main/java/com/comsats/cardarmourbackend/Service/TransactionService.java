package com.comsats.cardarmourbackend.Service;

import com.comsats.cardarmourbackend.Repository.TransactionRepository;
import com.comsats.cardarmourbackend.model.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TransactionService {

    @Autowired
    private TransactionRepository transactionRepository;

    public List<Transaction> GetAll(int virtualcardid){
        try{
            return transactionRepository.getAllTransactionByVirtualcardid(virtualcardid);
        } catch (Exception e){
            return null;
        }
    }

    public List<Transaction> GetFive(int virtualcardid){
        try{
            return transactionRepository.getFiveLatestTransactions(virtualcardid);
        } catch (Exception e){
            return null;
        }
    }

    public int GetSpending(int virtualcardid){
        try{
            return transactionRepository.getTotalSpendingByVirtualcardid(virtualcardid);
        } catch(Exception e){
            return 0;
        }
    }

    public int GetTotalTransactions(int virtualcardid){
        try{
            return transactionRepository.getTotalTransactionsByVirtualcardid(virtualcardid);
        } catch (Exception e){
            return 0;
        }
    }
}