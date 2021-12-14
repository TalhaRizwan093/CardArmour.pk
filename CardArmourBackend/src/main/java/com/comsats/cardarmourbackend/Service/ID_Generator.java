package com.comsats.cardarmourbackend.Service;

import java.util.Random;

public class ID_Generator {
    public static int generateID(){
        Random rand = new Random();
        return rand.nextInt(10000000);
    }
}
