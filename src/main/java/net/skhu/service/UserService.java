package net.skhu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;

import net.skhu.entity.User;
import net.skhu.model.UserRegistration;
import net.skhu.repository.BukitRepository;
import net.skhu.repository.DiaryRepository;
import net.skhu.repository.MemoRepository;
import net.skhu.repository.PlanRepository;
import net.skhu.repository.TimeTableRepository;
import net.skhu.repository.UserRepository;
import net.skhu.repository.WeekRepository;

@Service
public class UserService {

    @Autowired
    UserRepository userRepository;
    PlanRepository planRepository;
    WeekRepository weekRepository;
    TimeTableRepository timeTableRepository;
    BukitRepository bukitRepository;
    DiaryRepository diaryRepository;
    MemoRepository memoRepository;


    public List<User> findAll() {
        return userRepository.findAll();
    }

    public boolean hasErrors(UserRegistration userRegistration, BindingResult bindingResult) {
        if (bindingResult.hasErrors())
            return true;
        if (userRegistration.getPassword1().equals(userRegistration.getPassword2()) == false) {
            bindingResult.rejectValue("password2", null, "비밀번호가 일치하지 않습니다.");
            return true;
        }
        User user = userRepository.findByUserId(userRegistration.getUserId());
        if (user != null) {
            bindingResult.rejectValue("userId", null, "사용자 아이디가 중복됩니다.");
            return true;
        }
        return false;
    }


    public User createEntity(UserRegistration userRegistration) {
        User user = new User();
        user.setName(userRegistration.getName());
        user.setUserId(userRegistration.getUserId());
        user.setPassword(userRegistration.getPassword1());

        return user;
    }

    public void save(UserRegistration userRegistration) {
        User user = createEntity(userRegistration);
        userRepository.save(user);
    }

    @Transactional
    public void deleteByUserId(String userId) {


        userRepository.deleteByUserId(userId);
    }


}
