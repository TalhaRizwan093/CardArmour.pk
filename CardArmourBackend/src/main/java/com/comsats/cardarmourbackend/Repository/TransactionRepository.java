package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.Transaction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface TransactionRepository extends JpaRepository<Transaction, Integer> {

    @Query(value="select * from transaction where virtualcardid = ?1 ORDER BY \"date\" DESC",nativeQuery = true)
    List<Transaction> getAllTransactionByVirtualcardid(@RequestParam int virtualcardid);

    @Query(value="select * from transaction where virtualcardid = ?1 ORDER BY \"date\" DESC FETCH FIRST 5 ROWS ONLY",nativeQuery = true)
    List<Transaction> getFiveLatestTransactions(int virtualcardid);

    @Query(value="SELECT SUM(AMOUNT) FROM TRANSACTION WHERE VIRTUALCARDID = ?1",nativeQuery = true)
    int getTotalSpendingByVirtualcardid(@RequestParam int virtualcardid);

    @Query(value="SELECT COUNT(AMOUNT) FROM TRANSACTION WHERE VIRTUALCARDID = ?1",nativeQuery = true)
    int getTotalTransactionsByVirtualcardid(@RequestParam int virtualcardid);

}
