package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Repository.CustomerRepository;
import com.comsats.cardarmourbackend.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Random;

@CrossOrigin("*")
@RestController
public class CustomerController {

    @Autowired
    private CustomerRepository customerRepo;

    @GetMapping("/getCustomerIds")
    public List<Integer> getIds(){
        return customerRepo.getIds();
    }


    @PostMapping("/addNewUserData")
    public boolean addCustomerData(@RequestBody Customer customer){
        Customer newCustomer = customer;
        newCustomer.setCustomerid(generateId());
        try{
            customerRepo.addCustomerData(newCustomer.getCustomerid(),newCustomer.getName(),newCustomer.getGender(),newCustomer.getCnic(),newCustomer.getDob(),newCustomer.getAge(),newCustomer.getEmail(),newCustomer.getCityid(),newCustomer.getUserid());
        } catch (Exception e){
            e.printStackTrace();
        }
        return true;

    }

    private int generateId(){
        Random rand = new Random();
        return rand.nextInt(10000000);
    }

}
