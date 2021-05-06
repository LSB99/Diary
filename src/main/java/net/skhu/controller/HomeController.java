package net.skhu.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.model.UserRegistration;
import net.skhu.repository.TimeTableRepository;
import net.skhu.service.UserService;

@Controller
public class HomeController {

	@Autowired UserService userService;
	@Autowired TimeTableRepository timetableRepository;

	//표지 구현
		@RequestMapping({"/", "index"})
		public String home(Model model) {

			model.addAttribute("message", "My Diary");

			return "home/index";
		}

	    @RequestMapping("login")
	    public String login() {
	        return "home/login";
	    }

	    @GetMapping("join")
	    public String join(Model model) {

	    	model.addAttribute(new UserRegistration());

	    	return "home/join";
	    }

		@PostMapping("join")
		 public String join(@Valid UserRegistration userRegistration, BindingResult bindingResult) {

			if(userService.hasErrors(userRegistration, bindingResult)) {
				return "home/join";
			}

			userService.save(userRegistration);

			timetableRepository.joinTimeTable(userRegistration.getUserId());

			return "redirect:joinSuccess";
		}

		@RequestMapping("joinSuccess")
	    public String registerSurccess() {
	        return "home/joinSuccess";
	    }



}
