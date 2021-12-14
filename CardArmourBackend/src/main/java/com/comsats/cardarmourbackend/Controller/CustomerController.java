package com.comsats.cardarmourbackend.Controller;
import com.comsats.cardarmourbackend.Dto.CustomerViewDto;
import com.comsats.cardarmourbackend.Service.CustomerService;
import com.comsats.cardarmourbackend.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @PostMapping("/getCustomer")
    public Customer getCustomer(@RequestParam int userid){
        return customerService.getCustomer(userid);
    }

    @PostMapping("/getCustomerIdByUserId")
    public int getCustomerId(@RequestParam int userid){
        return customerService.getCustomerId(userid);
    }

    @GetMapping("/getCustomerIds")
    public List<Integer> getIds(){
        return customerService.getIds();
    }

    @PostMapping("/addNewCustomerData")
    public int addCustomerData(@RequestBody Customer customer){
        return customerService.addCustomerData(customer);
    }

    @PostMapping("/updateCustomer")
    public void updateCustomer(@RequestBody Customer customer){
        customerService.updateCustomer(customer);
    }

    @GetMapping("/getAllCustomers")
    public List<Customer> getAll(){
        return customerService.getAll();
    }

    @GetMapping("/getPakistaniCustomers")
    public List<CustomerViewDto> getPakis(){
        return customerService.getPakis();
    }

    @GetMapping("/getIndianCustomers")
    public List<CustomerViewDto> getIndians(){
        return customerService.getIndians();
    }

    @GetMapping("/getBangladeshiCustomers")
    public List<CustomerViewDto> getBangladeshis(){
        return customerService.getBangladeshis();
    }

    @GetMapping("/getChineseCustomers")
    public List<CustomerViewDto> getChinese(){
        return customerService.getChinese();
    }

    @PostMapping("/getUseridByCustomerid")
    public int getUserIdByCustomerid(@RequestParam int customerid){
        return customerService.getUseridByCustomerid(customerid);
    }


}
