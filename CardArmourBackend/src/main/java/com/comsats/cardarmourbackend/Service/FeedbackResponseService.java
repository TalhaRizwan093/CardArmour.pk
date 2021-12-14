package com.comsats.cardarmourbackend.Service;

import com.comsats.cardarmourbackend.Repository.FeedbackResponseRepository;
import com.comsats.cardarmourbackend.model.FeedbackResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FeedbackResponseService {

    @Autowired
    private FeedbackResponseRepository feedbackResponseRepository;

    public void addReply(FeedbackResponse response){
        try{
            response.setResponseid(ID_Generator.generateID());
            feedbackResponseRepository.addReply(response.getResponseid(),response.getComment(),response.getDate(),response.getAdminid(),response.getFeedbackid());
        } catch(Exception e){
        }
    }

    public FeedbackResponse getReply(int feedbackid){
        try{
            return feedbackResponseRepository.getFeedback(feedbackid);
        } catch(Exception e){
            return null;
        }
    }

    public List<FeedbackResponse> getAllReply(){
        try{
            return feedbackResponseRepository.getAllReply();
        } catch(Exception e){
            return null;
        }
    }

}
