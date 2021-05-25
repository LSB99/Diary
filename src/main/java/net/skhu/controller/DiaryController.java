package net.skhu.controller;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;
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
import net.skhu.entity.UserId;
import net.skhu.entity.Week;
import net.skhu.mapper.BukitMapper;
import net.skhu.mapper.DiaryMapper;
import net.skhu.mapper.MemosMapper;
import net.skhu.mapper.PlanMapper;
import net.skhu.mapper.TimeTableMapper;
import net.skhu.mapper.WeekMapper;
import net.skhu.model.DiaryModel;
import net.skhu.model.Pagination;
import net.skhu.repository.BukitRepository;
import net.skhu.repository.DiaryRepository;
import net.skhu.repository.MemoRepository;
import net.skhu.repository.PlanRepository;
import net.skhu.repository.TimeTableRepository;
import net.skhu.repository.UserRepository;
import net.skhu.repository.WeekRepository;
import net.skhu.service.BukitService;



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

	@Autowired BukitService bukitService;


//홈(메뉴)화면 구현
	@RequestMapping("index")
	public String index(Model model) {
		String userid = UserId.currentUserName();
		model.addAttribute("userid", userid);
		return "diary/index";
	}

	// 하루일정 생성

	@GetMapping("onedayCreate")
	public String onedayCreate(Model model, Pagination pagination) {

		model.addAttribute("plan", new Plan());

		return "diary/onedayEdit";
	}

	@PostMapping("onedayCreate")
	public String onedayCreate(Model model, Plan plan, Pagination pagination) {

		String userid = UserId.currentUserName();
		plan.setUserId(userid);

		planRepository.save(plan);

		int lastPage = (int) Math.ceil((double) bukitRepository.count() / pagination.getSz());
		pagination.setPg(lastPage);

		return "redirect:onedayList?" + pagination.getQueryString();
	}

	// 하루일정 목록
	@GetMapping("onedayList")
	public String onedaylist(Model model, Pagination pagination) {

		String userid = UserId.currentUserName();
		List<Plan> plans = planRepository.findByUserId(userid, pagination);

		model.addAttribute("plans", plans);

		return "diary/onedayList";

	}

	@PostMapping(value = "onedayList", params = "cmd=save")
	public String onedayList(Model model, Plan plan, Pagination pagination) {

		List<Plan> plans =

				pagination.getDu() == 0 ?

						planRepository.findAll(pagination) :

						planRepository.findByBody(pagination);

		model.addAttribute("plans", plans);

		return "diary/onedayList";
	}

	// 하루일정 수정
	@GetMapping("onedayEdit")
	public String onedayEdit(Model model, @RequestParam("id") int id, Pagination pagination) {

		Plan plan = planRepository.findById(id).get();

		model.addAttribute("plan", plan);

		return "diary/onedayEdit";
	}

	@PostMapping(value = "onedayEdit", params = "cmd=save")
	public String onedayEdit(Model model, Plan plan, Pagination pagination) {

		plan.setUserId(UserId.currentUserName());

		planRepository.save(plan);

		model.addAttribute("message", "저장했습니다.");

		return "redirect:onedayList?" + pagination.getQueryString();
	}

	// 하루일정 삭제구현
	@PostMapping(value = "onedayEdit", params = "cmd=delete")
	public String onedayDelete(Model model, @RequestParam("id") int id, Pagination pagination) {

		planRepository.deleteById(id);

		return "redirect:onedayList?" + pagination.getQueryString();
	}



	// 일주일 주별 리스트
	@GetMapping("weekList")
	public String weekList(Model model, Pagination pagination) {

		List<Week> weeks = weekRepository.findByUserId(UserId.currentUserName(), pagination);

		model.addAttribute("weeks", weeks);

		return "diary/weekList";
	}


	@PostMapping(value = "weekList", params = "cmd=save")
	public String weekList(Model model, Week week, Pagination pagination) {

		List<Week> weeks =

				pagination.getDu() == 0 ?

						weekRepository.findAll(pagination) :

						weekRepository.findByMyweek(pagination);

		model.addAttribute("weeks", weeks);

		return "diary/weekList";
	}



	// 일주일계획 해당 주의 목록
	@GetMapping("weekListDetail")
	public String weekListDetail(Model model, @RequestParam("id") int id, Pagination pagination) {

		Week week = weekRepository.findById(id).get();

		model.addAttribute("week", week);

		return "diary/weekListDetail";
	}

	// 일주일계획 생성
	@GetMapping("weekCreate")
	public String weekCreate(Model model, Pagination pagination) {

		model.addAttribute("week", new Week());

		return "diary/weekEdit";
	}

	@PostMapping("weekCreate")
	public String weekCreate(Model model, Week week, Pagination pagination) {

		week.setUserId(UserId.currentUserName());

		weekRepository.save(week);

		int lastPage = (int) Math.ceil((double) bukitRepository.count() / pagination.getSz());
		pagination.setPg(lastPage);

		return "redirect:weekList?" + pagination.getQueryString();
	}

	// 일주일계획 수정
	@GetMapping("weekEdit")
	public String weekEdit(Model model, @RequestParam("id") int id, Pagination pagination) {

		Week week = weekRepository.findById(id).get();

		model.addAttribute("week", week);

		return "diary/weekEdit";
	}

	@PostMapping(value = "weekEdit", params = "cmd=save")
	public String weekEdit(Model model, Week week, Pagination pagination) {

		week.setUserId(UserId.currentUserName());

		weekRepository.save(week);

		model.addAttribute("message", "저장했습니다.");

		return "redirect:weekList?" + pagination.getQueryString();
	}

	// 일주일계획 삭제
	@PostMapping(value = "weekEdit", params = "cmd=delete")
	public String weekDelete(Model model, @RequestParam("id") int id, Pagination pagination) {

		weekRepository.deleteById(id);

		return "redirect:weekList?" + pagination.getQueryString();
	}

	// 시간표
	@GetMapping("timetable")
	public String timetable(Model model) {

		model.addAttribute("timetable", timetableMapper.findByUserId(UserId.currentUserName()));

		return "diary/timetable";
	}

	@PostMapping("timetable")
	public String timetable(Model model, TimeTable timetable) {

		timetableMapper.update(timetable);

		return "redirect:timetable";
	}

	// 버킷리스트 목록 구현
	@GetMapping("bukitlist")
	public String bukitlist(Model model, Pagination pagination) {

		List<Bukit> bukits = bukitRepository.findByUserId(UserId.currentUserName(), pagination);

		model.addAttribute("bukits", bukits);

		return "diary/bukitlist";
	}

	@PostMapping(value = "bukitlist", params = "cmd=save")
	public String bukitlist(Model model, Bukit bukit, Pagination pagination) {

		List<Bukit> bukits =

				pagination.getDu() == 0 ?

						bukitRepository.findAll(pagination) :

						bukitRepository.findByBody(pagination);

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

		bukit.setUserId(UserId.currentUserName());
		bukitRepository.save(bukit);

		int lastPage = (int) Math.ceil((double) bukitRepository.count() / pagination.getSz());
		pagination.setPg(lastPage);

		return "redirect:bukitlist?" + pagination.getQueryString();
	}

//버킷리스트 수정 구현
	@GetMapping("bukitEdit")
	public String bukitEdit(Model model, @RequestParam("id") int id, Pagination pagination) {

		Bukit bukit = bukitRepository.findById(id).get();

		model.addAttribute("bukit", bukit);

		return "diary/bukitEdit";
	}

	@PostMapping(value = "bukitEdit", params = "cmd=save")
	public String bukitEdit(Model model, Bukit bukit, Pagination pagination) {

		bukit.setUserId(UserId.currentUserName());
		bukitRepository.save(bukit);

		return "redirect:bukitlist?" + pagination.getQueryString();
	}

//버킷리스트 삭제구현
	@PostMapping(value = "bukitEdit", params = "cmd=delete")

	public String bukitDelete(Model model, @RequestParam("id") int id, Pagination pagination) {

		bukitRepository.deleteById(id);

		return "redirect:bukitlist?" + pagination.getQueryString();
	}

	//일기 생성 구현
    @GetMapping("diaryCreate")
    public String diaryCreate(Model model, Pagination pagination) {

    	model.addAttribute("diaryModel", new DiaryModel());

    	return "diary/diaryEdit";
    }

    @Transactional
    @PostMapping("diaryCreate")
    public String diaryCreate(Model model, @Valid DiaryModel a, BindingResult bindingResult, Pagination pagination) {


    	String currentid=UserId.currentUserName();
    	int id=insertDiary(a, currentid);

    	int lastPage=(int)Math.ceil((double)bukitRepository.count()/pagination.getSz());
    	pagination.setPg(lastPage);

        return "redirect:diarySpace?" + id + "&" + pagination.getQueryString();
    }
    	private int insertDiary(DiaryModel a, String userId) {
    		int maxNo=diaryRepository.findMaxNo(userId);

    		Diary diary= new Diary();
    		diary.setUserId(UserId.currentUserName());
    		diary.setTitle(a.getTitle());
    		diary.setWriteDate(new Date());
    		diary.setBody(a.getBody());
    		diary.setNo(maxNo+1);
    		diaryRepository.save(diary);
    		return diary.getId();
    	}



  	//일기 목록 구현
    @RequestMapping("diarySpace")
    public String diarySpace(Model model, Pagination pagination) {

    	List<Diary> diary = diaryRepository.findByUserId( UserId.currentUserName(), pagination );

    	model.addAttribute("diarys", diary);

        return "diary/diarySpace";
    }

    //일기 보기 구현
    @RequestMapping("diaryView")
    public String diaryView(@RequestParam("id") int id, Pagination pagination, Model model) {
        Diary diary = diaryRepository.findById(id).get();
        model.addAttribute("diary", diary);
        return "diary/diaryView";
    }



//일기 수정 구현
    @GetMapping("diaryEdit")
    public String diaryEdit(Model model,  @RequestParam("id") int id, Pagination pagination) {

    	Diary diary = diaryRepository.findById(id).get();

    	model.addAttribute("diaryModel", diary);

    	return "diary/diaryEdit";
    }

    @Transactional
    @PostMapping(value="diaryEdit")
    public String diaryEdit(Model model, Diary diary, @Valid DiaryModel a, BindingResult bindingResult, Pagination pagination) {

    	if(bindingResult.hasErrors()) {
        	model.addAttribute("diaryModel", diary);
        	return "diary/diaryEdit";
    	}
    	diary.setUserId(UserId.currentUserName());

    	diaryRepository.update(a.getId(), a.getTitle(), a.getBody());

     	model.addAttribute("message", "저장했습니다.");

     	return "redirect:diarySpace?" +a.getId()+"&"+ pagination.getQueryString();
    }


  //일기 삭제구현
    @PostMapping(value="diaryEdit", params="cmd=delete")
    public String diaryDelete(Model model,  @RequestParam("id") int id, Pagination pagination) {

    	diaryRepository.deleteById(id);

    	return "redirect:diarySpace?" + pagination.getQueryString();

    }

//메모 목록 구현
	@GetMapping("memopad")
	public String memopad(Model model, Pagination pagination) {

		List<Memos> memos = memoRepository.findByUserId(UserId.currentUserName(), pagination);

		model.addAttribute("memos", memos);

		return "diary/memopad";
	}



	@PostMapping(value = "memopad", params = "cmd=save")
	public String memopad(Model model, Memos memo, Pagination pagination) {

		List<Memos> memos =

				pagination.getDu() == 0 ?

						memoRepository.findAll(pagination) :

							memoRepository.findByBody(pagination);

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

		memo.setUserId(UserId.currentUserName());

		memoRepository.save(memo);

		int lastPage = (int) Math.ceil((double) bukitRepository.count() / pagination.getSz());
		pagination.setPg(lastPage);

		return "redirect:memopad?" + pagination.getQueryString();
	}

//메모 수정 구현
	@GetMapping("memoEdit")
	public String memoEdit(Model model, @RequestParam("id") int id, Pagination pagination) {

		Memos memo = memoRepository.findById(id).get();

		model.addAttribute("memo", memo);

		return "diary/memoEdit";
	}

	@PostMapping(value = "memoEdit", params = "cmd=save")
	public String memoEdit(Model model, Memos memo, Pagination pagination) {

		memo.setUserId(UserId.currentUserName());

		memoRepository.save(memo);

		model.addAttribute("message", "저장했습니다.");

		return "redirect:memopad?" + pagination.getQueryString();
	}

//메모 삭제구현
	@PostMapping(value = "memoEdit", params = "cmd=delete")
	public String memoDelete(Model model, @RequestParam("id") int id, Pagination pagination) {

		memoRepository.deleteById(id);

		return "redirect:memopad?" + pagination.getQueryString();
	}
}
