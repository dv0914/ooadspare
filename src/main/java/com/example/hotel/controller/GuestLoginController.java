package com.example.hotel.controller;

import com.example.hotel.model.Guest;
import com.example.hotel.repository.GuestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpSession;

@Controller
public class GuestLoginController {

    @Autowired
    private GuestRepository guestRepository;

    // Show the login form
    @GetMapping("/GuestLogin")
    public String showLoginForm() {
        return "guest-login";
    }

    // Process the login and store the logged-in guest in the session
    @PostMapping("/GuestLogin")
    public String processLogin(@RequestParam("email") String email, // assuming it's email
                               @RequestParam String password,
                               Model model, HttpSession session) {

        // Find guest by email
        Guest guest = guestRepository.findByEmail(email).orElse(null);

        // Validate guest credentials
        if (guest != null && guest.getPassword().equals(password)) {
            // Store the logged-in guest in the session
            session.setAttribute("loggedInGuest", guest);
            System.out.println("*****************" + guest.getGuestId());
            return "redirect:/GuestSection";  // Redirect to the guest's section
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "guest-login"; // Return to the login page if invalid credentials
        }
    }

    // Logout handler
    @GetMapping("/GuestLogout")
    public String logout(HttpSession session) {
        // Invalidate the session to log out
        session.invalidate();
        return "redirect:/GuestLogin"; // Redirect back to login page after logout
    }
}
