package net.skhu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.dto.Bukit;
import net.skhu.dto.Diary;
import net.skhu.dto.Memos;
import net.skhu.dto.User;
import net.skhu.mepper.UserMapper;

@Controller
@RequestMapping("/diary")
public class DiaryController {

	@Autowired UserMapper userMapper;


//표지 구현
	@RequestMapping("home")
	public String home(Model model) {
		model.addAttribute("message", "my diary");
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
	@RequestMapping("userDelete")
    public String userDelete(Model model) {

        return "redirect:login";
    }



//홈(메뉴)화면 구현
    @RequestMapping("index")
    public String index(Model model) {
    	  model.addAttribute("message", "오늘의 할 일을 내일로 미루지 말자");
        return "diary/index";
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
