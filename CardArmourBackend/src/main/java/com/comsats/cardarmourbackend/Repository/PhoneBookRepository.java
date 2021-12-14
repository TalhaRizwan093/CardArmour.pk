package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.PhoneBook;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface PhoneBookRepository extends JpaRepository<PhoneBook,Integer> {

    @Query(value="INSERT INTO \"CARDARMOUR\".\"Phone Book\" (PHONENUMBERID, PHONENUMBER, CUSTOMERID) VALUES (?1, ?2, ?3)",nativeQuery = true)
    void addPhoneNumber(int id,String phonenumber, int customerid);

    @Query(value="SELECT * FROM \"Phone Book\" WHERE CUSTOMERID = ?1",nativeQuery = true)
    PhoneBook getPhoneNumber(int customerid);

    @Query(value="UPDATE \"CARDARMOUR\".\"Phone Book\" SET PHONENUMBER = ?1 WHERE CUSTOMERID = ?2",nativeQuery = true)
    void updatePhoneNumber(String phoneNumber,int customerid);
}
