package com.remix.books.controller;

import com.remix.books.model.Role;
import com.remix.books.model.User;
import com.remix.books.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;

@Controller
public class RegistrationController {
    @Autowired
    UserRepo userRepo;

    @GetMapping("/registration")
    public String registration(){
        return"registration";
    }

    @PostMapping("/registration")
    public String newUser(User user, Model model){
        User user1 = userRepo.findByUsername(user.getUsername());
        if(user1!=null){
            model.addAttribute("message","User already exists");
            return"registration";
        }
        user.setOnline(true);
        user.setRoles(Collections.singleton(Role.USER));
        userRepo.save(user);
        return "redirect:/login";
    }
}
