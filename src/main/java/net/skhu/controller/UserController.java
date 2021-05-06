package net.skhu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.skhu.entity.User;
import net.skhu.repository.BukitRepository;
import net.skhu.repository.DiaryRepository;
import net.skhu.repository.MemoRepository;
import net.skhu.repository.PlanRepository;
import net.skhu.repository.TimeTableRepository;
import net.skhu.repository.UserRepository;
import net.skhu.repository.WeekRepository;
import net.skhu.service.UserService;

@Controller
public class UserController {

	@Autowired UserRepository userRepository;

	@Autowired BukitRepository bukitRepository;

	@Autowired DiaryRepository diaryRepository;

	@Autowired MemoRepository memoRepository;

	@Autowired PlanRepository planRepository;

	@Autowired TimeTableRepository timetableRepository;

	@Autowired WeekRepository weekRepository;

	@Autowired UserService userService;


    @RequestMapping("user/index")
    public String index(Model model) {
        return "user/index";
    }

  //회원탈퇴 구현
  	@GetMapping("user/userDelete")
      public String userDelete(Model model) {

  		model.addAttribute("user", new User());

          return "user/userDelete";
      }


  	@PostMapping("user/userDelete")
  	 public String userDelete(Model model, User user) {

  		model.addAttribute("user", user);

          return "user/userTrueDelete";
      }

  //회원 최종탈퇴
  	@RequestMapping("user/userTrueDelete")
      public String userDelete(Model model, @RequestParam("userId") String userId) {

  		bukitRepository.deleteBukit(userId);
  		diaryRepository.deleteDiary(userId);
  		memoRepository.deleteMemos(userId);
  		planRepository.deletePlan(userId);
  		timetableRepository.deleteTimeTable(userId);
  		weekRepository.deleteWeek(userId);
  		userService.deleteByUserId(userId);

          return "redirect:${R}home/index";
      }
}
