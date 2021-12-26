package com.example.cardarmourbackendmongodb.Controller;

import com.example.cardarmourbackendmongodb.Dto.CustomerDto;
import com.example.cardarmourbackendmongodb.Dto.FeedbackDto;
import com.example.cardarmourbackendmongodb.Dto.SingleFeedbackDto;
import com.example.cardarmourbackendmongodb.Model.*;
import com.example.cardarmourbackendmongodb.Service.CustomerService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
@AllArgsConstructor
public class CustomerController {

    private final CustomerService customerService;

    @GetMapping("/getAllCustomers")
    public List<Customer> fetchAllCustomers(){
        return customerService.getAllCustomers();
    }

    @PostMapping("/addNewCustomer")
    public void addCustomers(@RequestBody Customer customer){
            customerService.insertCustomer(customer);
    }

    @PostMapping("/getCustomerOnUsername")
    public Customer getCustomer(@RequestParam String username){
        return customerService.getCustomerOnUsername(username);
    }

    @PostMapping("/login")
    public Customer login(@RequestParam String username,@RequestParam String password){
        return customerService.login(username,password);
    }

    @PostMapping("/addBankAccount")
    public void addBankAccount(@RequestParam String username, @RequestBody Bankaccount bankaccount){
        customerService.addBankAccount(username,bankaccount);
    }

    @PostMapping("/getTransactions")
    public List<Transactions> getTransactions(@RequestParam String username){
        return customerService.getTransactions(username);
    }

    @PostMapping("/getBankAccount")
    public Bankaccount getBankAccount(@RequestParam String username){
        return customerService.getBankAccount(username);
    }

    @PostMapping("/addVirtualCard")
    public void addVirtualCard(@RequestParam String username, @RequestParam String expdate){
        customerService.addVirtualCard(username,expdate);
    }

    @PostMapping("/getVirtualCard")
    public Virtualcard getVirtualCard(@RequestParam String username){
        return customerService.getVirtualCard(username);
    }

    @PostMapping("/deleteBankAccount")
    public void deleteBankAccount(@RequestParam String username){
        customerService.deleteBankAccount(username);
    }

    @PostMapping("/deleteVirtualCard")
    public void deleteVirtualCard(@RequestParam String username){
        customerService.deleteVirtualCard(username);
    }

    @PostMapping("/addFeeedback")
    public void addFeedback(@RequestParam String username,@RequestBody Feedback feedback){
        customerService.addFeedback(username,feedback);
    }

    @PostMapping("/getFiveTransactions")
    public List<Transactions> getFive(@RequestParam String username){
        return customerService.getFiveTransactions(username);
    }

    @PostMapping("/getFeedback")
    public List<Feedback> getFeedback(@RequestParam String username){
        return customerService.getFeedbackByUsername(username);
    }

    @PostMapping("/addSetting")
    public void addSetting(@RequestBody Setting setting, @RequestParam String username){
        customerService.addSetting(setting,username);
    }

    @PostMapping("/getSetting")
    public Setting getSetting(@RequestParam String username){
        return customerService.getSetting(username);
    }

    @PostMapping("/updateUser")
    public void updateUser(@RequestParam String username, @RequestBody CustomerDto customerDto){
        customerService.updateUser(username,customerDto);
    }

    @GetMapping("/getFeedbacks")
    public List<FeedbackDto> getFeedbacks(){
        return customerService.getAllFeedbacks();
    }

    @PostMapping("/deleteCustomer")
    public void deleteCustomer(@RequestParam String username){
        customerService.deleteCustomer(username);
    }

    @PostMapping("/addResponse")
    public void addResponse(@RequestBody SingleFeedbackDto singleFeedbackDto){
        customerService.addResponseToFeedback(singleFeedbackDto);
    }

    @PostMapping("/getSpending")
    public int getSpending(@RequestParam String username){
        return customerService.totalSpending(username);
    }

    @PostMapping("/getCountTransactions")
    public int getCountTransactions(@RequestParam String username){
        return customerService.countTransactions(username);
    }

    @PostMapping("/getByCountry")
    public List<Customer> getByCountry(@RequestParam String countryName){
        return customerService.getByCountry(countryName);
    }

}
