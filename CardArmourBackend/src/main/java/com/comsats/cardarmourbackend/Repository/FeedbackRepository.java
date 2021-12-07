package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.Feedback;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FeedbackRepository extends JpaRepository<Feedback,Integer> {
}
