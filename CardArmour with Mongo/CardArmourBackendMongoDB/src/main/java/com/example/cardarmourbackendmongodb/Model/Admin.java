package com.example.cardarmourbackendmongodb.Model;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

@Data
@Document("admin")
public class Admin {

    @Id
    private String id;
    @Indexed(unique = true)
    private String username;
    private String password;
    private String name;
    private String gender;
    private String email;
    private Location location;

    public Admin(String username, String password, String name, String gender, String email, Location location) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.email = email;
        this.location = location;
    }
}
