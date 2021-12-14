package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.BankAccount;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.sql.Date;

public interface BankAccountRepository extends JpaRepository<BankAccount,Integer> {

    @Query(value="SELECT \"Bank Account\".accountid,\"Bank Account\".cardholdername,\"Bank Account\".bankname,\"Bank Account\".cardnumber,\"Bank Account\".cvc,\"Bank Account\".expdate FROM \"Bank Account\" JOIN \"Customer Bank Account\" ON \"Bank Account\".accountid = \"Customer Bank Account\".accountid JOIN CUSTOMER ON customer.customerid = \"Customer Bank Account\".customerid where customer.customerid = ?1",nativeQuery = true)
    BankAccount getBankAccountByUserId(int userid);

    @Query(value="INSERT INTO \"CARDARMOUR\".\"Bank Account\" (ACCOUNTID, CARDHOLDERNAME, BANKNAME, CARDNUMBER, CVC, EXPDATE) VALUES ( ?1, ?2, ?3, ?4, ?5 , ?6)",nativeQuery = true)
    int addPaymentMethod(int accountid, String cardholdername, String bankname, String cardnumber,int cvc , Date expdate);

    @Query(value="DELETE FROM \"Bank Account\" WHERE accountid = ?1",nativeQuery = true)
    void deletePaymentMethod(int accountid);

}
