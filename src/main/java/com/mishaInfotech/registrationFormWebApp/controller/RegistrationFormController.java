package com.mishaInfotech.registrationFormWebApp.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mishaInfotech.registrationFormWebApp.entity.UserDetailEntity;
import com.mishaInfotech.registrationFormWebApp.model.UserDetail;
import com.mishaInfotech.registrationFormWebApp.service.RegisterService;

@Controller
@RequestMapping("/registrationForm")
public class RegistrationFormController {

	@Autowired
	RegisterService registerService;

	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public String viewHomePage(Model model) {
		return "RegistrationForm";
	}

	@RequestMapping(value = { "/registerUser" }, method = RequestMethod.POST)
	public String registerNewUser(UserDetail payload) throws IOException {
		registerService.registerNewUser(payload);
		return "Success";
	}

	@RequestMapping(value = { "/viewUser" }, method = RequestMethod.GET)
	public String viewUser(ModelMap model) {
		List<UserDetailEntity> userDetails = registerService.getAllRegisteredUserList();
		model.addAttribute("listUser", userDetails);
		return "ViewUsers";
	}
}
