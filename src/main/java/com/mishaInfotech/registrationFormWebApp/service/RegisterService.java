package com.mishaInfotech.registrationFormWebApp.service;

import java.io.IOException;
import java.util.List;

import com.mishaInfotech.registrationFormWebApp.entity.UserDetailEntity;
import com.mishaInfotech.registrationFormWebApp.model.UserDetail;

public interface RegisterService {

	void registerNewUser(UserDetail payload) throws IOException;

	List<UserDetailEntity> getAllRegisteredUserList();

	
}
