package com.comsats.cardarmourbackend.Service;

import com.comsats.cardarmourbackend.Repository.FeedbackRepository;
import com.comsats.cardarmourbackend.model.Feedback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FeedbackService {

    @Autowired
    private FeedbackRepository feedbackRepository;

    public List<Feedback> getFeedback(int customerid){
        try{
            return feedbackRepository.getFeedbackByCustomerid(customerid);
        } catch (Exception e){
            return null;
        }
    }

    public void addFeedback(Feedback feedback){
        try{
            feedback.setFeedbackid(ID_Generator.generateID());
            feedbackRepository.addFeedback(feedback.getFeedbackid(),feedback.getDetail(),feedback.getDate(),feedback.getCustomerid());
        } catch (Exception e){
        }

    }

    public List<Feedback> getAllFeedback(){
        try{
            return feedbackRepository.getAllFeedback();
        } catch (Exception e){
            return null;
        }
    }

    public Feedback getFeedbackByFeedbackId(int feedbackid){
        try{
            return feedbackRepository.getFeedbackByFeedbackId(feedbackid);
        } catch (Exception e){
            return null;
        }
    }

}
