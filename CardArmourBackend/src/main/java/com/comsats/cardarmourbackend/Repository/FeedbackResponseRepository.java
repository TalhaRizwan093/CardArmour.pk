package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.FeedbackResponse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.sql.Date;

public interface FeedbackResponseRepository extends JpaRepository<FeedbackResponse,Integer> {

    @Query(value="INSERT INTO \"CARDARMOUR\".\"Feedback Response\" (RESPONSEID, \"comment\", \"date\", ADMINID, FEEDBACKID) VALUES (?1,?2,?3,?4,?5)",nativeQuery = true)
    void addReply(int responseid, String comment, Date date,int adminid,int feedbackid);

    @Query(value="SELECT * FROM \"Feedback Response\" where feedbackid = ?1",nativeQuery = true)
    FeedbackResponse getFeedback(int feedbackid);

}
