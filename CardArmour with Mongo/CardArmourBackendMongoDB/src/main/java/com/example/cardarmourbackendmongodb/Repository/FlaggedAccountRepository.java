package com.example.cardarmourbackendmongodb.Repository;

import com.example.cardarmourbackendmongodb.Model.FlaggedAccount;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface FlaggedAccountRepository extends MongoRepository<FlaggedAccount,String> {

        void deleteByUsername(String username);

        FlaggedAccount findFlaggedAccountByUsername(String username);

}
