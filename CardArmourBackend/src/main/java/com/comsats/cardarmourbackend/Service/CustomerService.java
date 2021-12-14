package com.comsats.cardarmourbackend.Service;

import com.comsats.cardarmourbackend.Dto.CustomerViewDto;
import com.comsats.cardarmourbackend.Repository.CustomerRepository;
import com.comsats.cardarmourbackend.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    public Customer getCustomer(int userid){
        try{
            return customerRepository.getCustomerByUserid(userid);
        } catch(Exception e){
            return null;
        }
    }

    public int getCustomerId(int userid){
        try{
            return customerRepository.getCustomerByUserId(userid);
        }catch (Exception e){
            return 0;
        }
    }

    public List<Integer> getIds(){
        try{
            return customerRepository.getIds();
        } catch(Exception e){
            return null;
        }
    }

    public int addCustomerData(Customer customer){
        Customer newCustomer = customer;
        newCustomer.setCustomerid(ID_Generator.generateID());
        try{
            customerRepository.addCustomerData(newCustomer.getCustomerid(),newCustomer.getName(),newCustomer.getGender(),newCustomer.getCnic(),newCustomer.getDob(),newCustomer.getAge(),newCustomer.getEmail(),newCustomer.getCityid(),newCustomer.getUserid());
        } catch (Exception e){
        }
        return customer.getCustomerid();
    }

    public void updateCustomer(Customer customer){
        try{
            customerRepository.updateCustomer(customer.getName(),customer.getGender(),customer.getCnic(),customer.getDob(),customer.getAge(),customer.getEmail(),customer.getCityid(),customer.getUserid());
        } catch(Exception e){
        }
    }

    public List<Customer> getAll(){
        try{
            return customerRepository.findAll();
        } catch(Exception e){
            return null;
        }
    }

    public List<CustomerViewDto> getPakis(){
        try{
            return customerRepository.getPakistaniCustomers();
        } catch(Exception e){
            return null;
        }
    }

    public List<CustomerViewDto> getIndians(){
        try{
            return customerRepository.getIndianCustomers();
        } catch(Exception e){
            return null;
        }
    }

    public List<CustomerViewDto> getBangladeshis(){
        try{
            return customerRepository.getBangladeshiCustomers();
        } catch(Exception e){
            return null;
        }
    }

    public List<CustomerViewDto> getChinese(){
        try{
            return customerRepository.getChineseCustomers();
        } catch(Exception e){
            return null;
        }
    }

    public int getUseridByCustomerid(int customerid){
        try{
            return customerRepository.getUseridByCustomerid(customerid);
        } catch(Exception e){
            return 0;
        }
    }

}
