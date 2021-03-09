package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.dto.Bukit;
import net.skhu.dto.Diary;
import net.skhu.dto.Memos;

@Controller
@RequestMapping("/diary")
public class DiaryController {

    @RequestMapping("index")
    public String index(Model model) {
    	  model.addAttribute("message", "오늘의 할 일을 내일로 미루지 말자");
        return "diary/index";
    }



    @RequestMapping("bukitlist")
    public String bukitlist(Model model) {
        model.addAttribute("message", "버킷리스트의 목록들 출력");
        return "diary/bukitlist";
    }


    @GetMapping("bukitEdit")
    public String bukitEdit(Model model) {
    	model.addAttribute("bukit", new Bukit());
    	return "diary/bukitEdit";
    }


    @PostMapping("bukitEdit")
    public String bukitEdit(Model model, Bukit bukit) {
       //저장구현
    	model.addAttribute("message", "저장했습니다.");
        return "redirect:bukitlist";
    }

    @RequestMapping("diarySpace")
    public String diarySpace(Model model) {
        model.addAttribute("message", "일기의 목록들 출력");
        return "diary/diarySpace";
    }

    @GetMapping("diaryEdit")
    public String diaryEdit(Model model) {
    	model.addAttribute("diary", new Diary());
    	return "diary/diaryEdit";
    }


    @PostMapping("diaryEdit")
    public String diaryEdit(Model model, Diary diary) {
       //저장구현
    	model.addAttribute("message", "저장했습니다.");
        return "redirect:diarySpace";
    }

    @RequestMapping("memopad")
    public String memopad(Model model) {
        model.addAttribute("message", "일기의 목록들 출력");
        return "diary/memopad";
    }

    @GetMapping("lineMemo")
    public String lineMemo(Model model) {
    	model.addAttribute("memos", new Memos());
    	return "diary/lineMemo";
    }


    @PostMapping("lineMemo")
    public String lineMemo(Model model, Memos memos) {
       //저장구현
    	model.addAttribute("message", "저장했습니다.");
        return "redirect:memopad";
    }

    @GetMapping("memo")
    public String memo(Model model) {
    	model.addAttribute("memos", new Memos());
    	return "diary/memo";
    }


    @PostMapping("memo")
    public String memo(Model model, Memos memos) {
       //저장구현
    	model.addAttribute("message", "저장했습니다.");
        return "redirect:memopad";
    }
}
