package com.example.cardarmourbackendmongodb.Model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Location {
    private String city;
    private String country;
}
