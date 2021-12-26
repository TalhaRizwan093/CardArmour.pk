package com.example.cardarmourbackendmongodb.Dto;

import com.example.cardarmourbackendmongodb.Model.Feedback;

import java.util.List;

public class FeedbackDto {

    private String username;
    private String details;
    private String response;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public String getResponse() {
        return response;
    }

    public void setResponse(String response) {
        this.response = response;
    }
}