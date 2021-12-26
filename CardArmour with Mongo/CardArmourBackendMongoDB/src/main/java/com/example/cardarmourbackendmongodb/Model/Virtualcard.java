package com.example.cardarmourbackendmongodb.Model;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Data
@AllArgsConstructor
public class Virtualcard {
    private String cardnumber;
    private String cvc;
    private String expdate;
}
