package com.example.cardarmourbackendmongodb.Service;

import com.example.cardarmourbackendmongodb.Model.FlaggedAccount;
import com.example.cardarmourbackendmongodb.Repository.FlaggedAccountRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@AllArgsConstructor
@Service
public class FlaggedUserService {

    private final FlaggedAccountRepository flaggedAccountRepository;

    public void addToFlaggedAccount(FlaggedAccount flaggedAccount){
        try{
            flaggedAccountRepository.save(flaggedAccount);
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public List<FlaggedAccount> getFlaggedList(){
        try{
            return flaggedAccountRepository.findAll();
        } catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public void deleteFromFlagged(String username){
        try{
            flaggedAccountRepository.deleteByUsername(username);
        } catch(Exception e){
            e.printStackTrace();
        }
    }

    public FlaggedAccount getFlaggedOnUsername(String username){
        try{
            return flaggedAccountRepository.findFlaggedAccountByUsername(username);
        } catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

}
