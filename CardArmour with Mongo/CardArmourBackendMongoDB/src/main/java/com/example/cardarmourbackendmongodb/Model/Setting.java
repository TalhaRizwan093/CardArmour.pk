package com.example.cardarmourbackendmongodb.Model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Setting {
    private String language;
    private String timeformat;
    private String mode;
}
