package com.comsats.cardarmourbackend.Repository;
import com.comsats.cardarmourbackend.model.CardLink;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CardLinkRepository extends JpaRepository<CardLink, Integer> {

    @Query(value="INSERT INTO \"CARDARMOUR\".\"Card Link\" (LINKID, LINKSTATUS, BANKACCOUNTID, VIRTUALCARDID) VALUES (?1,?2,?3,?4)",nativeQuery = true)
    void cardLink(int linkid,int linkstatus,int bankaccountid, int virtualcardid);

}
