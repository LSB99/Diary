package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	//user 정보 확인
    @RequestMapping("user/index")
    public String index(Model model) {
        return "user/index";
    }
}
