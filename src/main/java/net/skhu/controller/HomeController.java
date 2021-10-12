package net.skhu.controller;

import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.entity.Diary;
import net.skhu.model.UserRegistration;
import net.skhu.repository.DiaryRepository;
import net.skhu.repository.TimeTableRepository;
import net.skhu.service.UserService;

@Controller
public class HomeController {

	@Autowired UserService userService;
	@Autowired TimeTableRepository timetableRepository;
	@Autowired DiaryRepository diaryRepository;

	//표지
		@RequestMapping({"/", "index"})
		public String home(Model model) {

			model.addAttribute("message", "My Diary");

			return "home/index";
		}

	//로그인
	    @RequestMapping("login")
	    public String login() {
	        return "home/login";
	    }

	//회원가입
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

			Diary diary= new Diary();
   		diary.setUserId(userRegistration.getUserId());
   		diary.setTitle("일기 사용법");
   		diary.setWriteDate(new Date());
   		diary.setBody("1. 매일매일 경험하고 느낀 바를 적어보세요!"
   				+ "2. 글씨를 꾸미고 표도 추가해보세요"
   				+ "3. 다양하게 꾸며서 나만의 일기를 적어보세요"
   				+ "4. 하루의 한 줄이라도 꾸준히 적어볼까요?"
   				+ "습관을 길러봅시다!!"
   				+ "(본 글은 삭제가 불가능합니다)");
   		diary.setNo(1);
   		diaryRepository.save(diary);

			return "redirect:joinSuccess";
		}

	    //회원가입 성공시
		@RequestMapping("joinSuccess")
	    public String registerSurccess() {
	        return "home/joinSuccess";
	    }
}
