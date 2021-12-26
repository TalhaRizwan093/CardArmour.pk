package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.Feedback;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.sql.Date;
import java.util.List;

public interface FeedbackRepository extends JpaRepository<Feedback,Integer> {

    @Query(value="SELECT * FROM feedback WHERE customerid = ?1",nativeQuery = true)
    List<Feedback> getFeedbackByCustomerid(int customerid);

    @Query(value="INSERT INTO \"CARDARMOUR\".\"FEEDBACK\" (FEEDBACKID, DETAIL, \"date\", CUSTOMERID) VALUES (?1, ?2, ?3, ?4)",nativeQuery = true)
    void addFeedback(int feedbackid, String details, Date date,int customerid);

    @Query(value="SELECT * FROM feedback",nativeQuery = true)
    List<Feedback> getAllFeedback();

    @Query(value="SELECT * FROM feedback WHERE feedbackid = ?1",nativeQuery = true)
    Feedback getFeedbackByFeedbackId(int feedbackid);

}