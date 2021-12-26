package com.example.cardarmourbackendmongodb.Model;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

@Data
@Document("flaggedaccount")
public class FlaggedAccount {

    @Id
    private String id;
    @Indexed(unique = true)
    private String username;
    private String reason;

    public FlaggedAccount(String username, String reason) {
        this.username = username;
        this.reason = reason;
    }
}
