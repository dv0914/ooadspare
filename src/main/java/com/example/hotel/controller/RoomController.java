
package com.example.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
