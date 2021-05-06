package net.skhu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;

import net.skhu.entity.Bukit;
import net.skhu.entity.UserId;
import net.skhu.model.BukitRegistration;
import net.skhu.repository.BukitRepository;

@Service
public class BukitService {

    @Autowired
    BukitRepository bukitRepository;


    public boolean hasErrors(BukitRegistration bukitRegistration, BindingResult bindingResult) {
    	if(bindingResult.hasErrors())
    		return true;
    	return false;
    }

    public Bukit createEntity(BukitRegistration bukitRegistration) {
        Bukit bukit = new Bukit();
        bukit.setUserId(UserId.currentUserName());
        bukit.setBody(bukitRegistration.getBody());

        return bukit;
    }

    public void save(BukitRegistration bukitRegistration) {
        Bukit bukit = createEntity(bukitRegistration);
        bukitRepository.save(bukit);
    }

    @Transactional
    public void deleteByUserId(String userId) {
        bukitRepository.deleteBukit(userId);
    }


}
