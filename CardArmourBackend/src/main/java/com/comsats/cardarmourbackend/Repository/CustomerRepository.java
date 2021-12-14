package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.Dto.CustomerViewDto;
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

    @Query(value = "INSERT INTO \"CARDARMOUR\".\"CUSTOMER\" (customerid, name, gender, cnic, dob, age, email, cityid, userid) VALUES (?1, ?2, ?3, ?4, ?5 , ?6, ?7, ?8, ?9)",nativeQuery = true)
    int addCustomerData(int customerid, String name, String gender, String cnic, Date dob,int age,String email, int cityid,int userid);

    @Query(value="select customerid from customer where userid = ?1",nativeQuery = true)
    int getCustomerByUserId(int userid);

    @Query(value="select userid  from customer where customerid = ?1",nativeQuery = true)
    int getUseridByCustomerid(int customerid);

    @Query(value="UPDATE \"CARDARMOUR\".\"CUSTOMER\" SET NAME = ?1, GENDER = ?2, CNIC = ?3, DOB = ?4, AGE = ?5, EMAIL = ?6, CITYID = ?7 where USERID = ?8",nativeQuery = true)
    void updateCustomer(String name,String gender,String cnic,Date dob,int age,String email,int cityid, int userid);

    @Query(value = "SELECT * FROM Customer where USERID=?1",nativeQuery = true)
    Customer getCustomerByUserid(int userid);

    @Query(value="SELECT * FROM PakistaniCustomers ",nativeQuery = true)
    List<CustomerViewDto> getPakistaniCustomers();

    @Query(value="SELECT * FROM IndianCustomers ",nativeQuery = true)
    List<CustomerViewDto> getIndianCustomers();

    @Query(value="SELECT * FROM BangladeshiCustomers ",nativeQuery = true)
    List<CustomerViewDto> getBangladeshiCustomers();

    @Query(value="SELECT * FROM ChineseCustomers ",nativeQuery = true)
    List<CustomerViewDto> getChineseCustomers();



}
