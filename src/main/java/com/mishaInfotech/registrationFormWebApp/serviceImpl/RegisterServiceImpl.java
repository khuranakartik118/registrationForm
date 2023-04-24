package com.mishaInfotech.registrationFormWebApp.serviceImpl;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mishaInfotech.registrationFormWebApp.entity.UserDetailEntity;
import com.mishaInfotech.registrationFormWebApp.model.UserDetail;
import com.mishaInfotech.registrationFormWebApp.repository.UserDetailRepo;
import com.mishaInfotech.registrationFormWebApp.service.RegisterService;

@Service
@Transactional
public class RegisterServiceImpl implements RegisterService {

	@Autowired
	UserDetailRepo userDetailRepo;

	@Override
	public void registerNewUser(UserDetail payload) throws IOException {
		UserDetailEntity userDetailEntity = new UserDetailEntity();
		userDetailEntity.setCity(payload.getCity());
		userDetailEntity.setContactNo(payload.getContact());
		userDetailEntity.setDateOfBirth(payload.getDob());
		userDetailEntity.setEmailAddress(payload.getEmail());
		userDetailEntity.setGender(payload.getGender());
		userDetailEntity.setHobbies(payload.getHobbies());
		userDetailEntity.setName(payload.getName());
		userDetailEntity.setPhoto(payload.getPhoto().getBytes());
		userDetailEntity.setState(payload.getState());
		System.err.println("hi");
		userDetailRepo.save(userDetailEntity);
	}

	@Override
	public List<UserDetailEntity> getAllRegisteredUserList() {
	 List<UserDetailEntity> userDetailEntity=userDetailRepo.findAll();
		return userDetailEntity;
	}

}
