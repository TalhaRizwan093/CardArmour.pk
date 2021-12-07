package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {

    @Query(value = "SELECT * FROM Customer",nativeQuery = true)
    List<Customer> findAll();

}
