package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.CustomerBankAccount;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerBankAccountRepository extends JpaRepository<CustomerBankAccount,Integer> {
}
