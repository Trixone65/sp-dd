package com.repairsystem.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

@Controller
public class CustomErrorController implements ErrorController {

    @RequestMapping("/error")
    public String handleError(Model model) {
        // Add error attributes to model
        model.addAttribute("error", "An error occurred");
        model.addAttribute("message", "Please try again later");
        return "error"; 
    }
    
    // This is no longer needed in Spring Boot 2.7+
    // public String getErrorPath() {
    //    return "/error";
    // }
}