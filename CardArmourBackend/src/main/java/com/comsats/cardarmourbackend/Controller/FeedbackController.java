package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Repository.FeedbackRepository;
import com.comsats.cardarmourbackend.model.Feedback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Random;

@CrossOrigin("*")
@RestController
public class FeedbackController {

    @Autowired
    private FeedbackRepository feedbackRepository;

    @PostMapping("/getFeedbackById")
    public List<Feedback> getFeedback(@RequestParam int customerid){
        try{
            return feedbackRepository.getFeedbackByCustomerid(customerid);
        } catch (Exception e){
            return null;
        }
    }

    @PostMapping("/addFeedback")
    public boolean addFeedback(@RequestBody Feedback feedback){
        try{
            feedback.setFeedbackid(generateId());
            feedbackRepository.addFeedback(feedback.getFeedbackid(),feedback.getDetail(),feedback.getDate(),feedback.getCustomerid());
        } catch (Exception e){
        }
        return true;
    }


    private int generateId(){
        Random rand = new Random();
        return rand.nextInt(10000000);
    }

}
