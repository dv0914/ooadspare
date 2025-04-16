package com.example.hotel.controller;

import com.example.hotel.model.Host;
import com.example.hotel.repository.HostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpSession;

@Controller
public class HostLoginController {

    @Autowired
    private HostRepository hostRepository;

    // Show the login form
    @GetMapping("/HostLogin")
    public String showLoginForm() {
        return "host-login";
    }

    // Process the login and store the logged-in host in the session
    @PostMapping("/HostLogin")
    public String processLogin(@RequestParam String username, // assuming it's email
                               @RequestParam String password,
                               Model model, HttpSession session) {

        // Find host by email
        Host host = hostRepository.findByEmail(username).orElse(null);

        // Validate host credentials
        if (host != null && host.getPassword().equals(password)) {
            // Store the logged-in host in the session
            session.setAttribute("loggedInHost", host);
            System.out.println("*****************" + host.getHostId());
            return "redirect:/HostSection";  // Redirect to the host's section
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "host-login"; // Return to the login page if invalid credentials
        }
    }

    // Logout handler
    @GetMapping("/HostLogout")
    public String logout(HttpSession session) {
        // Invalidate the session to log out
        session.invalidate();
        return "redirect:/HostLogin"; // Redirect back to login page after logout
    }
}
