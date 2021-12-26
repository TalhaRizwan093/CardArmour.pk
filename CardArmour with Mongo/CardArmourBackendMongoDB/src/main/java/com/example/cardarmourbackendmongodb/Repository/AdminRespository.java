package com.example.cardarmourbackendmongodb.Repository;

import com.example.cardarmourbackendmongodb.Model.Admin;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface AdminRespository extends MongoRepository<Admin,String> {

    Admin findByUsernameAndPassword(String username, String password);

}
