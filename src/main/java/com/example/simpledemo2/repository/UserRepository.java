package com.example.simpledemo2.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.example.simpledemo2.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
}
