package com.comsats.cardarmourbackend.Service;

import com.comsats.cardarmourbackend.Repository.PhoneBookRepository;
import com.comsats.cardarmourbackend.model.PhoneBook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PhoneBookService {

    @Autowired
    PhoneBookRepository phoneBookRepository;

    public void addPhoneNumber(PhoneBook phoneBook){
        try{
            phoneBook.setPhonenumberid(ID_Generator.generateID());
            phoneBookRepository.addPhoneNumber(phoneBook.getPhonenumberid(),phoneBook.getPhonenumber(),phoneBook.getCustomerid());
        }catch(Exception e){
        }
    }

    public void updatePhoneNumber(PhoneBook phoneBook){
        try{
            phoneBookRepository.updatePhoneNumber(phoneBook.getPhonenumber(),phoneBook.getCustomerid());
        } catch(Exception e){

        }
    }

    public PhoneBook getPhoneNumber(int customerid){
        try{
            return phoneBookRepository.getPhoneNumber(customerid);
        } catch(Exception e){
            return null;
        }
    }

}
