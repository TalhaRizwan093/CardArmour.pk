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

    @PostMapping("/getCustomerIdByUserId")
    public int getCustomerId(@RequestParam int userid){
        try{
            return customerRepo.getCustomerByUserId(userid);
        }catch (Exception e){return 0;}
    }

    @GetMapping("/getCustomerIds")
    public List<Integer> getIds(){
        return customerRepo.getIds();
    }


    @PostMapping("/addNewUserData")
    public int addCustomerData(@RequestBody Customer customer){
        Customer newCustomer = customer;
        newCustomer.setCustomerid(generateId());
        try{
            customerRepo.addCustomerData(newCustomer.getCustomerid(),newCustomer.getName(),newCustomer.getGender(),newCustomer.getCnic(),newCustomer.getDob(),newCustomer.getAge(),newCustomer.getEmail(),newCustomer.getCityid(),newCustomer.getUserid());
        } catch (Exception e){
            e.printStackTrace();
        }
        return customer.getCustomerid();
    }

    @PostMapping("/getCustomer")
    public Customer getCustomer(@RequestParam int userid){
        try{
            return customerRepo.getCustomerByUserid(userid);
        } catch(Exception e){
            return null;
        }
    }

    @PostMapping("/updateCustomer")
    public boolean updateCustomer(@RequestBody Customer customer){
        try{
            customerRepo.updateCustomer(customer.getName(),customer.getGender(),customer.getCnic(),customer.getDob(),customer.getAge(),customer.getEmail(),customer.getCityid(),customer.getUserid());
        } catch(Exception e){

        }
        return true;
    }

    private int generateId(){
        Random rand = new Random();
        return rand.nextInt(10000000);
    }

}
