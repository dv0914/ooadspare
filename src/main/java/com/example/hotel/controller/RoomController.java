
package com.example.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.hotel.model.Property;


@Controller
public class RoomController {
    @GetMapping("/")
    public String home() {
        return "home"; // or any other default page
    }
    @GetMapping("/AdminSection")
        public String adminHome() {
        return "admin";
    }
}
