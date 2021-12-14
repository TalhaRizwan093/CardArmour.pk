package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Service.FeedbackService;
import com.comsats.cardarmourbackend.model.Feedback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
public class FeedbackController {

    @Autowired
    private FeedbackService feedbackService;

    @PostMapping("/getFeedbackById")
    public List<Feedback> getFeedback(@RequestParam int customerid){
        return feedbackService.getFeedback(customerid);
    }

    @PostMapping("/addFeedback")
    public void addFeedback(@RequestBody Feedback feedback){
        feedbackService.addFeedback(feedback);
    }

    @GetMapping("/getAllFeedback")
    public List<Feedback> getAllFeedback(){
        return feedbackService.getAllFeedback();
    }

    @PostMapping("/getFeedbackByFeedbackId")
    public Feedback getFeedbackByFeedbackId(@RequestParam int feedbackid){
        return feedbackService.getFeedbackByFeedbackId(feedbackid);
    }

}