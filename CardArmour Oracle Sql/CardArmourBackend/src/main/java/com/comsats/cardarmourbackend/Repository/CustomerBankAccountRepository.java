package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.CustomerBankAccount;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CustomerBankAccountRepository extends JpaRepository<CustomerBankAccount,Integer> {

    @Query(value="INSERT INTO \"CARDARMOUR\".\"Customer Bank Account\" (CBA_ID, CUSTOMERID, ACCOUNTID) VALUES (?1,?2,?3)",nativeQuery = true)
    void linkCustomerToAccount(int cbaid,int customerid,int accountid);

    @Query(value="DELETE FROM \"Customer Bank Account\" WHERE ACCOUNTID = ?1",nativeQuery = true)
    void deleteLink(int cutomerid);


}
