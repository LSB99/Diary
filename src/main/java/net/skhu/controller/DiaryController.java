package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import net.skhu.entity.Week;
import net.skhu.mapper.BukitMapper;
import net.skhu.mapper.DiaryMapper;
import net.skhu.mapper.MemosMapper;
import net.skhu.mapper.PlanMapper;
import net.skhu.mapper.TimeTableMapper;
import net.skhu.mapper.WeekMapper;
import net.skhu.repository.BukitRepository;
import net.skhu.repository.DiaryRepository;
import net.skhu.repository.MemoRepository;
import net.skhu.repository.PlanRepository;
import net.skhu.repository.TimeTableRepository;
import net.skhu.repository.UserRepository;
import net.skhu.repository.WeekRepository;

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
	
	static String currentuserId;

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

		currentuserId = userId;

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
		
		User user = userRepository.findById(userId).get();
		
		model.addAttribute("user", user);

	    return "diary/password";
	}


//회원가입 구현
	@GetMapping("join")
    public String join(Model model) {

    	model.addAttribute("user", new User());

    	return "diary/join";
    }

	@PostMapping("join")
	 public String join(Model model, User user) {

		userRepository.save(user);
		
		bukitRepository.joinBukit(user.getUserId());
		
		diaryRepository.joinDiary(user.getUserId());
		
		memoRepository.joinMemos(user.getUserId());
		
		planRepository.joinPlan(user.getUserId());
		
		timetableRepository.joinTimeTable(user.getUserId());
		
		weekRepository.joinWeek(user.getUserId());

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

		userRepository.deleteById(userId);
		
		bukitRepository.deleteBukit(userId);
		
		diaryRepository.deleteDiary(userId);
		
		memoRepository.deleteMemos(userId);
		
		planRepository.deletePlan(userId);
		
		timetableRepository.deleteTimeTable(userId);
		
		weekRepository.deleteWeek(userId);

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
    @GetMapping("oneday")
    public String oneday(Model model) {
    	
    	model.addAttribute("plan", planRepository.findByUserId(currentuserId));
    	
        return "diary/oneday";
    }
    
    
    
    
  //하루일정
    @PostMapping("oneday")
    public String oneday(Model model , Plan plan) {
    	
    	planMapper.update(plan);
    	
        return "redirect:index";
    }
    


    
    
  //일주일계획 목록
    @RequestMapping("weekList")
    public String weekList(Model model) {
    	
    	List<Week> weeks=weekRepository.findAll();
    	
     	model.addAttribute("weeks", weeks);
     	
        return "diary/weekList";
    }
    
    
    

  //일주일계획 생성
    @GetMapping("weekCreate")
    public String weekCreate(Model model) {
    	
    	model.addAttribute("week", weekRepository.findByUserId(currentuserId));
    	
    	return "diary/weekEdit";
    }


    @PostMapping("weekCreate")
    public String weekCreate(Model model, Week week) {
    	
    	weekMapper.update(week);
    	
        return "redirect:weekList";
    }

    
    
  //일주일계획 수정
    @GetMapping("weekEdit")
    public String weekEdit(Model model, @RequestParam("id") int id) {
    	
    	Week week=weekRepository.findById(id).get();
    	
    	model.addAttribute("week", week);
    	
    	return "diary/weekEdit";
    }


    @PostMapping("weekEdit")
    public String weekEdit(Model model, Week week) {
    	weekRepository.save(week);
     	model.addAttribute("message", "저장했습니다.");
        return "redirect:weekList";
    }

  //일주일계획 삭제
    @RequestMapping("weekDelete")
    public String weekDelete(Model model, @RequestParam("id") int id) {
    	weekRepository.deleteById(id);
        return "redirect:weekList";
    }


  //시간표
    @GetMapping("timetable")
    public String timetable(Model model) {

    	model.addAttribute("timetable", timetableRepository.findByUserId(currentuserId));

        return "diary/timetable";
    }
    
    
    @PostMapping("timetable")
    public String timetable(Model model, TimeTable timetable) {

    	timetableMapper.update(timetable);

        return "diary/timetable";
    }


  //버킷리스트 목록 구현
    @RequestMapping("bukitlist")
    public String bukitlist(Model model) {
    	
        List<Bukit> bukits = bukitRepository.findByUserId(currentuserId);
        
    	model.addAttribute("bukits", bukits);
    	
        return "diary/bukitlist";
    }


//버킷리스트 생성 구현
    @GetMapping("bukitCreate")
    public String bukitCreate(Model model) {
    	
    	model.addAttribute("bukit", bukitRepository.findOneByUserId(currentuserId));
    	
    	return "diary/bukitEdit";
    }


    @PostMapping("bukitCreate")
    public String bukitCreate(Model model, Bukit bukit) {
    	
    	bukitMapper.update(bukit);
    	
        return "redirect:bukitlist";
    }


//버킷리스트 수정 구현
    @GetMapping("bukitEdit")
    public String bukitEdit(Model model, @RequestParam("id") int id) {
    	
    	Bukit bukit=bukitRepository.findById(id).get();
    	
    	model.addAttribute("bukit", bukit);
    	
    	return "diary/bukitEdit";
    }


    @PostMapping("bukitEdit")
    public String bukitEdit(Model model, Bukit bukit) {
    	
       bukitRepository.save(bukit);
       
    	model.addAttribute("message", "저장했습니다.");
    	
        return "redirect:bukitlist";
    }

//버킷리스트 삭제구현
    @RequestMapping("bukitDelete")
    
    public String bukitDelete(Model model, @RequestParam("id") int id) {
    	
    	bukitRepository.deleteById(id);
    	
        return "redirect:bukitlist";
    }



//일기 생성 구현
    @GetMapping("diaryCreate")
    public String diaryCreate(Model model) {
    	
    	model.addAttribute("diary", diaryRepository.findOneByUserId(currentuserId));
    	
    	return "diary/diaryEdit";
    }

    @PostMapping("diaryCreate")
    public String diaryCreate(Model model, Diary diary) {

    	diaryMapper.update(diary);
    	
    	currentuserId = diary.getUserId();
    	
        return "redirect:diarySpace";
    }
    
    
  //일기 목록 구현
    @RequestMapping("diarySpace")
    public String diarySpace(Model model) {
    	
    	List<Diary> diary = diaryRepository.findByUserId(currentuserId);
    	
    	model.addAttribute("diarys", diary);
    	
        return "diary/diarySpace";
    }


//일기 수정 구현
    @GetMapping("diaryEdit")
    public String diaryEdit(Model model,  @RequestParam("id") int id) {
    	
    	Diary diary=diaryRepository.findById(id).get();
    	
    	model.addAttribute("diary", diary);
    	
    	return "diary/diaryEdit";
    }

    @PostMapping("diaryEdit")
    public String diaryEdit(Model model, Diary diary) {
    	
    	diaryRepository.save(diary);
    	
     	model.addAttribute("message", "저장했습니다.");
     	
        return "redirect:diarySpace";
    }

  //일기 삭제구현
    @RequestMapping("diaryDelete")
    public String diaryDelete(Model model,  @RequestParam("id") int id) {
    	diaryRepository.deleteById(id);
        return "redirect:diarySpace";
    }




//메모 목록 구현
    @RequestMapping("memopad")
    public String memopad(Model model) {
    	
    	List<Memos> memos = memoRepository.findByUserId(currentuserId);
    	
    	model.addAttribute("memos", memos);
    	
        return "diary/memopad";
    }


//메모 생성 구현
    @GetMapping("memoCreate")
    public String memoCreate(Model model) {
    	
    	model.addAttribute("memo", memoRepository.findOneByUserId(currentuserId));
    	
    	return "diary/memoEdit";
    }

    @PostMapping("memoCreate")
    public String memoCreate(Model model, Memos memo) {
    	
    	memoMapper.update(memo);
    	
        return "redirect:memopad";
    }


//메모 수정 구현
    @GetMapping("memoEdit")
    public String memoEdit(Model model, @RequestParam("id") int id) {
    	
    	Memos memo=memoRepository.findById(id).get();
    	
    	model.addAttribute("memo", memo);
    	
    	return "diary/memoEdit";
    }


    @PostMapping("memoEdit")
    public String memoEdit(Model model, Memos memo) {
    	
    	memoRepository.save(memo);
    	
      	model.addAttribute("message", "저장했습니다.");
      	
        return "redirect:memopad";
    }

//메모 삭제구현
    @RequestMapping("memoDelete")
    public String memoDelete(Model model, @RequestParam("id") int id) {
    	memoRepository.deleteById(id);
        return "redirect:memopad";
    }
}
