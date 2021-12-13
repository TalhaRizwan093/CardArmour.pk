package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.FlaggedUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface FlaggedUserRepository extends JpaRepository<FlaggedUser,Integer> {

    @Query(value="INSERT INTO \"CARDARMOUR\".\"Flagged User\" (FLAGGEDID, REASON, ADMIN_ADMINID, CUSTOMER_CUSTOMERID) VALUES (?1,?2,?3,?4)",nativeQuery = true)
    void addToFlaggedAccount(int flaggedid,String reason,int adminid,int customerid);

    @Query(value="DELETE FROM \"CARDARMOUR\".\"Flagged User\" where flaggedid = ?1",nativeQuery = true)
    void deleteFlaggedUser(int flaggedid);

}
