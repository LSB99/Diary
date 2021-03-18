package net.skhu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.skhu.dto.Bukit;
import net.skhu.dto.Diary;
import net.skhu.dto.Memos;
import net.skhu.dto.Plan;
import net.skhu.dto.User;
import net.skhu.dto.WeekPlan;
import net.skhu.mapper.UserMapper;

@Controller
@RequestMapping("/diary")
public class DiaryController {

	@Autowired UserMapper userMapper;


//표지 구현
	@RequestMapping("home")
	public String home(Model model) {

		model.addAttribute("message", "My Diary");

		return "diary/home";
	}

//로그인 구현
	@GetMapping("login")
    public String login(Model model) {

    	model.addAttribute("user", new User());

    	return "diary/login";
    }

	@PostMapping("login")
	 public String login(Model model, String userId) {

		userMapper.findByuserId(userId);

	    return "redirect:index";
	}


//비밀번호 찾기 구현
	@GetMapping("find")
    public String find(Model model) {

    	model.addAttribute("user", new User());

    	return "diary/find";
    }

	@PostMapping("find")
	 public String find(Model model, String userId) {

		userMapper.findByuserId(userId);

	    return "redirect:login";
	}


//회원가입 구현
	@GetMapping("join")
    public String join(Model model) {

    	model.addAttribute("user", new User());

    	return "diary/join";
    }

	@PostMapping("join")
	 public String join(Model model, User user) {

		userMapper.insert(user);

	    return "redirect:login";
	}


//회원탈퇴 구현
	@GetMapping("userDelete")
    public String userDelete(Model model) {

		model.addAttribute("user", new User());

        return "diary/userDelete";
    }

	@PostMapping("userDelete")
	 public String userDelete(Model model, User user) {

		model.addAttribute("user", user);

        return "diary/userTrueDelete";
    }

//회원 최종탈퇴
	@RequestMapping("userTrueDelete")
    public String userDelete(Model model, @RequestParam("userId")String userId) {

		userMapper.delete(userId);

        return "redirect:home";
    }



//홈(메뉴)화면 구현
    @RequestMapping("index")
    public String index(Model model) {

        return "diary/index";
    }


  //달력 구현
    @RequestMapping("calendar")
    public String calendar(Model model) {

        return "diary/calendar";
    }

  //하루일정
    @RequestMapping("oneday")
    public String oneday(Model model) {
    	  model.addAttribute("plan", new Plan());
        return "diary/oneday";
    }


  //일주일계획 목록
    @RequestMapping("weekList")
    public String weekList(Model model) {
        model.addAttribute("message", "버킷리스트의 목록들 출력");
        return "diary/weekList";
    }

  //일주일계획 생성
    @GetMapping("weekCreate")
    public String weekCreate(Model model) {
    	model.addAttribute("weekPlan", new WeekPlan());
    	return "diary/weekEdit";
    }


    @PostMapping("weekCreate")
    public String weekCreate(Model model, WeekPlan weekPlan) {
       //저장구현
    	model.addAttribute("message", "저장했습니다.");
        return "redirect:weekList";
    }

  //일주일계획 수정
    @GetMapping("weekEdit")
    public String weekEdit(Model model) {

    	return "diary/weekEdit";
    }


    @PostMapping("weekEdit")
    public String weekEdit(Model model, WeekPlan weekplan) {
       //저장구현
    	model.addAttribute("message", "저장했습니다.");
        return "redirect:weekList";
    }

  //일주일계획 삭제
    @RequestMapping("weekDelete")
    public String weekDelete(Model model) {

        return "redirect:weekList";
    }


  //시간표
    @RequestMapping("timetable")
    public String timetable(Model model) {

    	model.addAttribute("user", new User());

        return "diary/timetable";
    }


//버킷리스트 목록 구현
    @RequestMapping("bukitlist")
    public String bukitlist(Model model) {
        model.addAttribute("message", "버킷리스트의 목록들 출력");
        return "diary/bukitlist";
    }


//버킷리스트 생성 구현
    @GetMapping("bukitCreate")
    public String bukitCreate(Model model) {
    	model.addAttribute("bukit", new Bukit());
    	return "diary/bukitEdit";
    }


    @PostMapping("bukitCreate")
    public String bukitCreate(Model model, Bukit bukit) {
       //저장구현
    	model.addAttribute("message", "저장했습니다.");
        return "redirect:bukitlist";
    }


//버킷리스트 수정 구현
    @GetMapping("bukitEdit")
    public String bukitEdit(Model model) {

    	return "diary/bukitEdit";
    }


    @PostMapping("bukitEdit")
    public String bukitEdit(Model model, Bukit bukit) {
       //저장구현
    	model.addAttribute("message", "저장했습니다.");
        return "redirect:bukitlist";
    }

//버킷리스트 삭제구현
    @RequestMapping("bukitDelete")
    public String bukitDelete(Model model) {

        return "redirect:bukitlist";
    }



//일기 목록 구현
    @RequestMapping("diarySpace")
    public String diarySpace(Model model) {
    	model.addAttribute("date", "2021-03-10");
        model.addAttribute("message", "일기의 목록들 출력");
        return "diary/diarySpace";
    }


//일기 생성 구현
    @GetMapping("diaryCreate")
    public String diaryCreate(Model model) {
    	model.addAttribute("diary", new Diary());
    	return "diary/diaryEdit";
    }

    @PostMapping("diaryCreate")
    public String diaryCreate(Model model, Diary diary) {

    	model.addAttribute("message", "저장했습니다.");
        return "redirect:diarySpace";
    }


//일기 수정 구현
    @GetMapping("diaryEdit")
    public String diaryEdit(Model model) {

    	return "diary/diaryEdit";
    }

    @PostMapping("diaryEdit")
    public String diaryEdit(Model model, Diary diary) {
       //저장구현
    	model.addAttribute("message", "저장했습니다.");
        return "redirect:diarySpace";
    }

  //일기 삭제구현
    @RequestMapping("diaryDelete")
    public String diaryDelete(Model model) {

        return "redirect:diarySpace";
    }




//메모 목록 구현
    @RequestMapping("memopad")
    public String memopad(Model model) {
        model.addAttribute("message", "메모 목록");
        return "diary/memopad";
    }


//메모 생성 구현
    @GetMapping("memoCreate")
    public String memoCreate(Model model) {
    	model.addAttribute("memos", new Memos());
    	return "diary/memoEdit";
    }

    @PostMapping("memoCreate")
    public String memoCreate(Model model, Memos memos) {
       //저장구현
    	model.addAttribute("message", "저장했습니다.");
        return "redirect:memopad";
    }


//메모 수정 구현
    @GetMapping("memoEdit")
    public String memoEdit(Model model) {
    	model.addAttribute("memos", new Memos());
    	return "diary/memoEdit";
    }


    @PostMapping("memoEdit")
    public String memoEdit(Model model, Memos memos) {
       //저장구현
    	model.addAttribute("message", "저장했습니다.");
        return "redirect:memopad";
    }

//메모 삭제구현
    @RequestMapping("memoDelete")
    public String memoDelete(Model model) {

        return "redirect:memopad";
    }
}
