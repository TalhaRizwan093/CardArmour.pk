package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.SystemUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface UserRepository extends JpaRepository<SystemUser, Integer> {

    @Query(value="INSERT INTO \"CARDARMOUR\".\"System User\" (userid, username, password) VALUES (?1, ?2, ?3)",nativeQuery = true)
    Boolean addNewUser(int userid, String username, String password);

    @Query(value = "SELECT * FROM \"System User\" WHERE username = ?1 AND password = ?2 ", nativeQuery = true)
    SystemUser findByUsernamePassword(String username, String password);

    @Query(value="SELECT userid FROM \"System User\" WHERE username = ?1 AND password = ?2", nativeQuery = true)
    int getIds(String username,String password);


}