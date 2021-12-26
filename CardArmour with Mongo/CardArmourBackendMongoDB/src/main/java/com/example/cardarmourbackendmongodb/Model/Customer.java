package com.example.cardarmourbackendmongodb.Model;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.List;

@Data
@Document("customers")
public class Customer {


    @Id
    private String id;
    @Indexed(unique = true)
    private String username;
    private String password;
    private String name;
    private String gender;
    private String cnic;
    private String dateofbirth;
    private String age;
    private String email;
    private List<String> phonenumber;
    private Location location;
    private Bankaccount bankaccount;
    private Virtualcard virtualcard;
    private List<Transactions> transactions;
    private List<Feedback> feedbacks;
    private Setting setting;

    public Customer(String username, String password, String name, String gender, String cnic, String dateofbirth, String age, String email, List<String> phonenumber, Location location, Bankaccount bankaccount, Virtualcard virtualcard, List<Transactions> transactions, List<Feedback> feedbacks, Setting setting) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.cnic = cnic;
        this.dateofbirth = dateofbirth;
        this.age = age;
        this.email = email;
        this.phonenumber = phonenumber;
        this.location = location;
        this.bankaccount = bankaccount;
        this.virtualcard = virtualcard;
        this.transactions = transactions;
        this.feedbacks = feedbacks;
        this.setting = setting;
    }
}
