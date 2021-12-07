package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.BankAccount;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BankAccountRepository extends JpaRepository<BankAccount,Integer> {
}
