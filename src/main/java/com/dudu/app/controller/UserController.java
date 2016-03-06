package com.dudu.app.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dudu.app.entity.User;
import com.dudu.app.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String createUser(@ModelAttribute("user") User user, HttpSession httpSession) {
		logger.info("{}", user);
		// check dumplicate
		User userCheck = new User();
		userCheck.setName(user.getName());
		List<User> userList = userService.findByCriteria(userCheck);
		if (userList.size() == 0) {
			userService.save(user);
			httpSession.setAttribute("user", user.getName());
		}
		return "redirect:home";
	}
}
