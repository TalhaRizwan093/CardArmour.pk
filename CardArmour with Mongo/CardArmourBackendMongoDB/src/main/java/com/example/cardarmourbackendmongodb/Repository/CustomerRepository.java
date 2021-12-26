package com.example.cardarmourbackendmongodb.Repository;

import com.example.cardarmourbackendmongodb.Model.Customer;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;


public interface CustomerRepository extends MongoRepository<Customer,String> {

    Customer findByUsername(String username);

    Customer findByUsernameAndPassword(String username,String password);

    void deleteCustomerByUsername(String username);

    List<Customer> getCustomerByLocationCountry(String countryname);


}
