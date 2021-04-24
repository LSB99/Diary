package net.skhu.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.skhu.entity.Bukit;
import net.skhu.entity.Diary;
import net.skhu.entity.Memos;
import net.skhu.entity.Plan;
import net.skhu.entity.TimeTable;
import net.skhu.entity.User;
import net.skhu.entity.UserId;
import net.skhu.entity.Week;
import net.skhu.mapper.BukitMapper;
import net.skhu.mapper.DiaryMapper;
import net.skhu.mapper.MemosMapper;
import net.skhu.mapper.PlanMapper;
import net.skhu.mapper.TimeTableMapper;
import net.skhu.mapper.WeekMapper;
import net.skhu.model.Pagination;
import net.skhu.model.UserRegistration;
import net.skhu.repository.BukitRepository;
import net.skhu.repository.DiaryRepository;
import net.skhu.repository.MemoRepository;
import net.skhu.repository.PlanRepository;
import net.skhu.repository.TimeTableRepository;
import net.skhu.repository.UserRepository;
import net.skhu.repository.WeekRepository;
import net.skhu.service.UserService;

@Controller
@RequestMapping("/diary")
public class DiaryController {

	@Autowired UserRepository userRepository;

	@Autowired BukitRepository bukitRepository;
	@Autowired BukitMapper bukitMapper;

	@Autowired DiaryRepository diaryRepository;
	@Autowired DiaryMapper diaryMapper;

	@Autowired MemoRepository memoRepository;
	@Autowired MemosMapper memoMapper;

	@Autowired PlanRepository planRepository;
	@Autowired PlanMapper planMapper;

	@Autowired TimeTableRepository timetableRepository;
	@Autowired TimeTableMapper timetableMapper;

	@Autowired WeekRepository weekRepository;
	@Autowired WeekMapper weekMapper;

	@Autowired UserService userService;



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

		UserId.currentuserId = userId;

	    return "redirect:index";
	}




// 로그아웃 구현
		@GetMapping("logout")
	    public String logout(Model model) {

	    	model.addAttribute( userRepository.findByUserId(UserId.currentuserId) );

	    	return "diary/logout";
	    }

		@PostMapping("logout")
		 public String logout(Model model, User user) {

			UserId.currentuserId = "";

			return "redirect:login";
		}





//비밀번호 찾기 구현
	@GetMapping("find")
    public String find(Model model) {

    	model.addAttribute("user", new User());

    	return "diary/find";
    }

	@PostMapping("find")
	 public String find( Model model , String userId ) {

		User user = userRepository.findById(userId).get();

		model.addAttribute("user", user);

	    return "diary/password";
	}


//회원가입 구현
	@GetMapping("join")
    public String join(Model model) {

    	model.addAttribute(new UserRegistration());

    	return "diary/join";
    }

	@PostMapping("join")
	 public String join(@Valid UserRegistration userRegistration, BindingResult bindingResult) {

		if(userService.hasErrors(userRegistration, bindingResult)) {
			return "diary/join";
		}

		userService.save(userRegistration);

		timetableRepository.joinTimeTable(userRegistration.getUserId());

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
    public String userDelete(Model model, @RequestParam("userId") String userId) {

		bukitRepository.deleteBukit(userId);
		diaryRepository.deleteDiary(userId);
		memoRepository.deleteMemos(userId);
		planRepository.deletePlan(userId);
		timetableRepository.deleteTimeTable(userId);
		weekRepository.deleteWeek(userId);
		userService.deleteByUserId(userId);

        return "redirect:home";
    }



//홈(메뉴)화면 구현
    @RequestMapping("index")
    public String index(Model model) {

        return "diary/index";
    }



    //하루일정 생성
    @GetMapping("onedayCreate")
    public String onedayCreate(Model model, Pagination pagination) {

    	model.addAttribute("plan", new Plan());

        return "diary/onedayEdit";
    }


    @PostMapping("onedayCreate")
    public String onedayCreate(Model model , Plan plan, Pagination pagination) {

    	plan.setUserId(UserId.currentuserId);

    	planRepository.save(plan);

    	int lastPage=(int)Math.ceil((double)bukitRepository.count()/pagination.getSz());
    	pagination.setPg(lastPage);

        return "redirect:onedayList?" + pagination.getQueryString();
    }


    // 하루일정 목록
    @RequestMapping("onedayList")
    public String onedaylist(Model model, Pagination pagination) {

    	List<Plan> plans = planRepository.findByUserId( UserId.currentuserId, pagination );

    	model.addAttribute("plans", plans);

        return "diary/onedayList";

    }



    //하루일정 수정
    @GetMapping("onedayEdit")
    public String onedayEdit(Model model, @RequestParam("id") int id, Pagination pagination) {

    	Plan plan = planRepository.findById(id).get();

    	model.addAttribute("plan", plan);

    	return "diary/onedayEdit";
    }


    @PostMapping(value="onedayEdit", params="cmd=save")
    public String onedayEdit(Model model, Plan plan, Pagination pagination) {

    	plan.setUserId(UserId.currentuserId);

    	planRepository.save(plan);

     	model.addAttribute("message", "저장했습니다.");

     	return "redirect:onedayList?" + pagination.getQueryString();
    }



  //하루일정 삭제구현
    @PostMapping(value="onedayEdit", params="cmd=delete")
    public String onedayDelete(Model model, @RequestParam("id") int id, Pagination pagination) {

    	planRepository.deleteById(id);

    	return "redirect:onedayList?" + pagination.getQueryString();
    }


  //일주일 주별 리스트
    @GetMapping("weekList")
    public String weekList(Model model, Pagination pagination) {

    	List<Week> weeks = weekRepository.findByUserId( UserId.currentuserId, pagination );

    	model.addAttribute("weeks", weeks);

    	return "diary/weekList";
    }


  //일주일계획 해당 주의 목록
    @GetMapping("weekListDetail")
    public String weekListDetail( Model model , @RequestParam("id") int id, Pagination pagination) {

    	Week week = weekRepository.findById(id).get();

     	model.addAttribute("week", week);

        return "diary/weekListDetail";
    }




  //일주일계획 생성
    @GetMapping("weekCreate")
    public String weekCreate(Model model, Pagination pagination) {

    	model.addAttribute("week", new Week());

    	return "diary/weekEdit";
    }


    @PostMapping("weekCreate")
    public String weekCreate(Model model, Week week, Pagination pagination) {

    	week.setUserId( UserId.currentuserId );

    	weekRepository.save(week);

    	int lastPage=(int)Math.ceil((double)bukitRepository.count()/pagination.getSz());
    	pagination.setPg(lastPage);

        return "redirect:weekList?" + pagination.getQueryString();
    }



  //일주일계획 수정
    @GetMapping("weekEdit")
    public String weekEdit(Model model, @RequestParam("id") int id, Pagination pagination) {

    	Week week = weekRepository.findById(id).get();

    	model.addAttribute("week", week);

    	return "diary/weekEdit";
    }


    @PostMapping(value="weekEdit", params="cmd=save")
    public String weekEdit(Model model, Week week, Pagination pagination) {

    	week.setUserId(UserId.currentuserId);

    	weekRepository.save(week);

     	model.addAttribute("message", "저장했습니다.");

     	return "redirect:weekList?" + pagination.getQueryString();
    }

  //일주일계획 삭제
    @PostMapping(value="weekEdit", params="cmd=delete")
    public String weekDelete(Model model, @RequestParam("id") int id, Pagination pagination) {

    	weekRepository.deleteById(id);

    	return "redirect:weekList?" + pagination.getQueryString();
    }


  //시간표
    @GetMapping("timetable")
    public String timetable(Model model) {

    	model.addAttribute( "timetable" ,  timetableMapper.findByUserId( UserId.currentuserId ) );

        return "diary/timetable";
    }


    @PostMapping("timetable")
    public String timetable( Model model ,  TimeTable timetable ) {

    	timetableMapper.update(timetable);

        return "redirect:timetable";
    }


  //버킷리스트 목록 구현
    @RequestMapping("bukitlist")
    public String bukitlist(Model model, Pagination pagination) {

        List<Bukit> bukits = bukitRepository.findByUserId(UserId.currentuserId, pagination);

    	model.addAttribute("bukits", bukits);

        return "diary/bukitlist";
    }


//버킷리스트 생성 구현
    @GetMapping("bukitCreate")
    public String bukitCreate(Model model, Pagination pagination) {

    	model.addAttribute("bukit", new Bukit());

    	return "diary/bukitEdit";
    }


    @PostMapping("bukitCreate")
    public String bukitCreate(Model model, Bukit bukit, Pagination pagination) {

    	bukit.setUserId(UserId.currentuserId);
    	bukitRepository.save(bukit);

    	int lastPage=(int)Math.ceil((double)bukitRepository.count()/pagination.getSz());
    	pagination.setPg(lastPage);

        return "redirect:bukitlist?" + pagination.getQueryString();
    }


//버킷리스트 수정 구현
    @GetMapping("bukitEdit")
    public String bukitEdit(Model model, @RequestParam("id") int id, Pagination pagination) {

    	Bukit bukit=bukitRepository.findById(id).get();

    	model.addAttribute("bukit", bukit);

    	return "diary/bukitEdit";
    }


    @PostMapping(value="bukitEdit", params="cmd=save")
    public String bukitEdit(Model model, Bukit bukit, Pagination pagination) {

        bukit.setUserId(UserId.currentuserId);
        bukitRepository.save(bukit);

        return "redirect:bukitlist?" + pagination.getQueryString();
    }

//버킷리스트 삭제구현
    @PostMapping(value="bukitEdit", params="cmd=delete")

    public String bukitDelete(Model model, @RequestParam("id") int id, Pagination pagination) {

    	bukitRepository.deleteById(id);

        return "redirect:bukitlist?" + pagination.getQueryString();
    }



//일기 생성 구현
    @GetMapping("diaryCreate")
    public String diaryCreate(Model model, Pagination pagination) {

    	model.addAttribute("diary", new Diary());

    	return "diary/diaryEdit";
    }

    @PostMapping("diaryCreate")
    public String diaryCreate(Model model, Diary diary, Pagination pagination) {

    	diary.setUserId(UserId.currentuserId);

    	diaryMapper.insert(diary);

    	int lastPage=(int)Math.ceil((double)bukitRepository.count()/pagination.getSz());
    	pagination.setPg(lastPage);

        return "redirect:diarySpace?" + pagination.getQueryString();
    }


  //일기 목록 구현
    @RequestMapping("diarySpace")
    public String diarySpace(Model model, Pagination pagination) {

    	List<Diary> diary = diaryRepository.findByUserId( UserId.currentuserId, pagination );

    	model.addAttribute("diarys", diary);

        return "diary/diarySpace";
    }


//일기 수정 구현
    @GetMapping("diaryEdit")
    public String diaryEdit(Model model,  @RequestParam("id") int id, Pagination pagination) {

    	Diary diary = diaryRepository.findById(id).get();

    	model.addAttribute("diary", diary);

    	return "diary/diaryEdit";
    }

    @PostMapping(value="diaryEdit", params="cmd=save")
    public String diaryEdit(Model model, Diary diary, Pagination pagination) {

    	diary.setUserId(UserId.currentuserId);

    	diaryRepository.save(diary);

     	model.addAttribute("message", "저장했습니다.");

     	return "redirect:diarySpace?" + pagination.getQueryString();
    }

  //일기 삭제구현
    @PostMapping(value="diaryEdit", params="cmd=delete")
    public String diaryDelete(Model model,  @RequestParam("id") int id, Pagination pagination) {

    	diaryRepository.deleteById(id);

    	return "redirect:diarySpace?" + pagination.getQueryString();

    }




//메모 목록 구현
    @RequestMapping("memopad")
    public String memopad(Model model, Pagination pagination) {

    	List<Memos> memos = memoRepository.findByUserId( UserId.currentuserId, pagination );

    	model.addAttribute("memos", memos);

        return "diary/memopad";
    }


//메모 생성 구현
    @GetMapping("memoCreate")
    public String memoCreate(Model model, Pagination pagination) {

    	model.addAttribute("memo", new Memos());

    	return "diary/memoEdit";
    }

    @PostMapping("memoCreate")
    public String memoCreate(Model model, Memos memo, Pagination pagination) {

    	memo.setUserId(UserId.currentuserId);

    	memoRepository.save(memo);

    	int lastPage=(int)Math.ceil((double)bukitRepository.count()/pagination.getSz());
    	pagination.setPg(lastPage);

        return "redirect:memopad?" + pagination.getQueryString();
    }


//메모 수정 구현
    @GetMapping("memoEdit")
    public String memoEdit(Model model, @RequestParam("id") int id, Pagination pagination) {

    	Memos memo=memoRepository.findById(id).get();

    	model.addAttribute("memo", memo);

    	return "diary/memoEdit";
    }


    @PostMapping(value="memoEdit", params="cmd=save")
    public String memoEdit(Model model, Memos memo, Pagination pagination) {

    	memo.setUserId(UserId.currentuserId);

    	memoRepository.save(memo);

      	model.addAttribute("message", "저장했습니다.");

      	return "redirect:memopad?" + pagination.getQueryString();
    }

//메모 삭제구현
    @PostMapping(value="memoEdit", params="cmd=delete")
    public String memoDelete(Model model, @RequestParam("id") int id, Pagination pagination) {

    	memoRepository.deleteById(id);

    	return "redirect:memopad?" + pagination.getQueryString();
    }
}
