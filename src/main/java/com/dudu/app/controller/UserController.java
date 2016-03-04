package com.dudu.app.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dudu.app.dao.UserDao;
import com.dudu.app.entity.User;


@Controller
public class UserController {
	
	@Autowired
	UserDao userDao;
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@RequestMapping(value = "/registUser", method = RequestMethod.GET)
	public String registUser(Model model) {
	    return "registUser";
	}
	
	
	@RequestMapping(value = "/createUser", method = RequestMethod.POST)
	public String createUser(@ModelAttribute("user") User user, Model model) {
		logger.info("{}", user);
		
		System.out.println(user.getName() + ":" + user.getPassword());
		userDao.save(user);
		//model.addAttribute("message",  user.getName() + ":" + user.getPassword());
		return "registUser";
	}
}
