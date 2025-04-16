package com.example.hotel.controller;

import com.example.hotel.model.Host;
import com.example.hotel.model.Property;
import com.example.hotel.repository.PropertyRepository;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class AddPropertyController {

    @Autowired
    private PropertyRepository propertyRepository;

    // GET request to show form
    @GetMapping("/addProperty")
    public String showForm(Model model, HttpSession session) {
        Host host = (Host) session.getAttribute("loggedInHost");

        if (host == null) {
            return "redirect:/HostLogin";  // Prevent unauthorized access
        }

        System.out.println("Host from session: " + host.getHostId());

        model.addAttribute("property", new Property());
        return "AddProperty";  // return JSP/Thymeleaf view
    }

    // POST request to submit form
    @PostMapping("/addProperty")
    public String addProperty(@ModelAttribute("property") Property property,
                              HttpSession session, Model model) {

        Host host = (Host) session.getAttribute("loggedInHost");
        if (host == null) {
            return "redirect:/HostLogin";
        }

        // ✅ Set the host before saving
        property.setHost(host);

        boolean success = propertyRepository.addProperty(property);

        if (success) {
            return "redirect:/HostSection";
        } else {
            model.addAttribute("error", "Failed to add property.");
            return "AddProperty";
        }
    }
}
