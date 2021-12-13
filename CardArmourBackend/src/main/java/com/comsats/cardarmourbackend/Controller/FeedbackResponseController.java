package com.comsats.cardarmourbackend.Controller;


import com.comsats.cardarmourbackend.Repository.FeedbackResponseRepository;
import com.comsats.cardarmourbackend.model.FeedbackResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Random;

@CrossOrigin("*")
@RestController
public class FeedbackResponseController {

    @Autowired
    private FeedbackResponseRepository feedbackResponseRepository;

    @PostMapping("/addReply")
    public void addReply(@RequestBody FeedbackResponse response){
        try{
            response.setResponseid(generateId());
            feedbackResponseRepository.addReply(response.getResponseid(),response.getComment(),response.getDate(),response.getAdminid(),response.getFeedbackid());
        } catch(Exception e){

        }
    }

    @PostMapping("/getReply")
    public FeedbackResponse getReply(@RequestParam int feedbackid){
        try{
            return feedbackResponseRepository.getFeedback(feedbackid);
        } catch(Exception e){
            return null;
        }
    }


    private int generateId(){
        Random rand = new Random();
        return rand.nextInt(10000000);
    }
}
