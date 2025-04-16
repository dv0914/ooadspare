package com.example.hotel.controller;

import com.example.hotel.model.Host;
import com.example.hotel.model.Property;
import com.example.hotel.repository.PropertyRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class HostSectionController {

    @Autowired
    private PropertyRepository propertyRepository;

    @GetMapping("/HostSection")
    public String showHostSection(HttpSession session, Model model) {
        Host loggedInHost = (Host) session.getAttribute("loggedInHost");

        if (loggedInHost == null) {
            return "redirect:/HostLogin";
        }

        model.addAttribute("host", loggedInHost);

        // ⭐ Get properties for this host
        List<Property> hostProperties = propertyRepository.findByHostId(loggedInHost.getHostId());
        model.addAttribute("properties", hostProperties);

        return "host"; // JSP name (host.jsp)
    }
}
