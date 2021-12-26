package com.example.cardarmourbackendmongodb.Model;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Data
@AllArgsConstructor
public class Transactions {
    private String date;
    private String comment;
    private String status;
    private int amount;
}
