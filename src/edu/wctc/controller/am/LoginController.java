package edu.wctc.controller.am;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping("/showLoginForm")
    public String showLoginForm() {
        return "login";
    }
}
