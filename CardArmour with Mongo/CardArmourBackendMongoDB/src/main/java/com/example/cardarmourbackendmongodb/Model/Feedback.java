package com.example.cardarmourbackendmongodb.Model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Feedback {
    private String details;
    private String response;
}
