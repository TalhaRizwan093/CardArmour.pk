package com.comsats.cardarmourbackend.Service;

import com.comsats.cardarmourbackend.Repository.UserRepository;
import com.comsats.cardarmourbackend.model.SystemUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public int addUser(SystemUser user){
        SystemUser newUser = user;
        newUser.setUserid(ID_Generator.generateID());
        try{
            userRepository.addNewUser(newUser.getUserid(), newUser.getUsername(), newUser.getPassword());
        } catch (Exception e){

        }
        return newUser.getUserid();
    }

    public ResponseEntity<SystemUser> login (SystemUser user){
        try{
            SystemUser user1 = userRepository.findByUsernamePassword(user.getUsername(),user.getPassword());
            if(user1!=null){
                return new ResponseEntity<SystemUser>(user1, HttpStatus.OK);
            } else {
                return new ResponseEntity("not found", HttpStatus.NOT_FOUND);
            }
        } catch (Exception e){
            return null;
        }
    }

    public SystemUser getUser(int userid){
        try{
            return userRepository.getUser(userid);
        } catch(Exception e){
            return null;
        }
    }

    public void updateUser(SystemUser user){
        try{
            userRepository.updateUser(user.getUsername(),user.getPassword(),user.getUserid());
        } catch(Exception e){
        }
    }

    public int getIds(SystemUser user){
        return userRepository.getIds(user.getUsername(), user.getPassword());
    }

    public void deleteUser(int userid){
        try{
            userRepository.deleteUser(userid);
        } catch(Exception e){

        }
    }

}
