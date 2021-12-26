package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.VirtualCard;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.sql.Date;

public interface VirtualCardRepository extends JpaRepository<VirtualCard,Integer> {

    @Query(value="INSERT INTO \"CARDARMOUR\".\"Virtual Card\" (CARDID, CARDHOLDERNAME, \"card number\", CVC, EXPDATE) VALUES (?1,?2,?3,?4,?5)",nativeQuery = true)
    int addVirtualCard(int cardid, String cardholdername, String cardnumber, int cvc, Date expdate);


    @Query(value="DELETE FROM \"Virtual Card\" WHERE cardid = ?1 ",nativeQuery = true)
    void deleteVirtualCard(int cardid);

    @Query(value="SELECT \"Virtual Card\".cardid,\"Virtual Card\".cardholdername,\"Virtual Card\".\"card number\",\"Virtual Card\".cvc,\"Virtual Card\".expdate FROM \"Virtual Card\" JOIN \"Card Link\" ON \"Virtual Card\".cardid = \"Card Link\".virtualcardid JOIN \"Bank Account\" ON \"Card Link\".bankaccountid = \"Bank Account\".accountid WHERE \"Bank Account\".accountid = ?1",nativeQuery = true)
    VirtualCard getVirtualCard(int accountid);


}
