package com.remix.books.repos;

import com.remix.books.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User,Integer> {
    User findByLogin(String login);
}
