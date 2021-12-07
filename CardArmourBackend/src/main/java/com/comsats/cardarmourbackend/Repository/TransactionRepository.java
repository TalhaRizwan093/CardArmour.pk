package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.Transaction;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TransactionRepository extends JpaRepository<Transaction, Integer> {
}
