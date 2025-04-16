package com.example.hotel.controller;

import com.example.hotel.model.Admin;
import com.example.hotel.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class AdminLoginController {

    @Autowired
    private AdminRepository adminRepository;

    @GetMapping("/AdminLogin")
    public String showLoginForm() {
        return "admin-login";
    }

    @PostMapping("/AdminLogin")
    public String processLogin(@RequestParam String username, // assuming it's email
                               @RequestParam String password,
                               Model model) {

        Admin admin = adminRepository.findByEmail(username).orElse(null);

        if (admin != null && admin.getPassword().equals(password)) {
            return "redirect:/AdminSection";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "admin-login";
        }
    }
}
