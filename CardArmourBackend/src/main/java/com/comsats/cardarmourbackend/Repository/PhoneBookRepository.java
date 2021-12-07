package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.PhoneBook;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PhoneBookRepository extends JpaRepository<PhoneBook,Integer> {
}
