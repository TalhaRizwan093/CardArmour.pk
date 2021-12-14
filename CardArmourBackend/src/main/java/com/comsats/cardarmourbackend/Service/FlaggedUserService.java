package com.comsats.cardarmourbackend.Service;

import com.comsats.cardarmourbackend.Dto.FlaggedCustomerDto;
import com.comsats.cardarmourbackend.Repository.FlaggedUserRepository;
import com.comsats.cardarmourbackend.model.FlaggedUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FlaggedUserService {

    @Autowired
    private FlaggedUserRepository flaggedUserRepository;

    public void addToFlaggedUser(FlaggedUser flaggedUser){
        try{
            flaggedUser.setFlaggedid(ID_Generator.generateID());
            flaggedUserRepository.addToFlaggedAccount(flaggedUser.getFlaggedid(),flaggedUser.getReason(),flaggedUser.getAdminAdminid(),flaggedUser.getCustomerCustomerid());
        } catch(Exception e){
        }
    }

    public void deleteFlaggedAccount(int flaggedid){
        try{
            flaggedUserRepository.deleteFlaggedUser(flaggedid);
        } catch(Exception e){
        }
    }

    public List<FlaggedCustomerDto> getAllFlaggedCustomers(){
        try{
            return flaggedUserRepository.getAllFlaggedCustomers();
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

}
