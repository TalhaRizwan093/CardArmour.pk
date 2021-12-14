package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Service.FeedbackResponseService;
import com.comsats.cardarmourbackend.model.FeedbackResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
public class FeedbackResponseController {

    @Autowired
    private FeedbackResponseService feedbackResponseService;

    @PostMapping("/addReply")
    public void addReply(@RequestBody FeedbackResponse response){
        feedbackResponseService.addReply(response);
    }

    @PostMapping("/getReply")
    public FeedbackResponse getReply(@RequestParam int feedbackid){
        return feedbackResponseService.getReply(feedbackid);
    }

    @GetMapping("/getAllReply")
    public List<FeedbackResponse> getAllReply(){
        return feedbackResponseService.getAllReply();
    }

}