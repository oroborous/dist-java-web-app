package edu.wctc.controller.pm;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
    @GetMapping("/showLoginForm")
    public String showLoginForm() {
        return "login";
    }
}
