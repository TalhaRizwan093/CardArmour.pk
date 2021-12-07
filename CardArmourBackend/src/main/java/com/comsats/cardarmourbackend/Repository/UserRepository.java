package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.SystemUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<SystemUser, Integer> {

    @Query(value = "SELECT * FROM \"System User\" WHERE username = ?1 AND password = ?2 ", nativeQuery = true)
    SystemUser findByUsernamePassword(String username,String password);

}
