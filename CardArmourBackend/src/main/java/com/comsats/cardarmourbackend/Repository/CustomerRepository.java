package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.sql.Date;
import java.util.List;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {

    @Query(value = "SELECT * FROM Customer",nativeQuery = true)
    List<Customer> findAll();

    @Query(value="SELECT CUSTOMERID FROM Customer", nativeQuery = true)
    List<Integer> getIds();

    @Query(value = "INSERT INTO \"CARDARMOUR\".\"CUSTOMER\" (customerid, name, gender, cnic, dob, age, email, cityid, userid) VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9)",nativeQuery = true)
    boolean addCustomerData(int customerid, String name, String gender, String cnic, Date dob,int age,String email, int cityid,int userid);

}
