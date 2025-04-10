package com.example.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class AdminLoginController {

    @GetMapping("/AdminLogin")
    public String showLoginForm() {
        return "admin-login";
    }

    @PostMapping("/AdminLogin")
    public String processLogin(@RequestParam String username,
                               @RequestParam String password,
                               Model model) {
        // Hardcoded credentials for now
        if ("admin".equals(username) && "admin123".equals(password)) {
            return "redirect:/AdminSection";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "admin-login";
        }
    }
}
