package com.example.cardarmourbackendmongodb.Dto;

import com.example.cardarmourbackendmongodb.Model.Feedback;

public class SingleFeedbackDto {

    String username;
    Feedback feedback;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Feedback getFeedback() {
        return feedback;
    }

    public void setFeedback(Feedback feedback) {
        this.feedback = feedback;
    }
}