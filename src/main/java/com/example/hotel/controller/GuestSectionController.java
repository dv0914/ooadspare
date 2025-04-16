package com.example.hotel.controller;

import com.example.hotel.model.Guest;
import com.example.hotel.model.Property;
import com.example.hotel.repository.PropertyRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class GuestSectionController {

    @Autowired
    private PropertyRepository propertyRepository;

    @GetMapping("/GuestSection")
    public String showGuestSection(HttpSession session, Model model) {
        Guest loggedInGuest = (Guest) session.getAttribute("loggedInGuest");

        if (loggedInGuest == null) {
            return "redirect:/GuestLogin"; // Redirect to login if not logged in
        }

        // Fetch all properties from the database
        List<Property> properties = propertyRepository.findAll(); // Use the findAll method

        // Add the properties list to the model
        model.addAttribute("guest", loggedInGuest);
        model.addAttribute("properties", properties); // Pass properties to the JSP

        return "guest"; // Return the guest.jsp page
    }
}
