package com.dudu.app.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dudu.app.dao.UserDao;
import com.dudu.app.entity.User;

@Controller
public class LoginCotnroller {
	@Autowired
	UserDao userDao;
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@RequestMapping(value = "/loginInt", method = RequestMethod.GET)
	public String loginInt(Model model) {
		System.out.println("-----loginInt");
	    return "login";
	}
	
	@RequestMapping(value = "/loginSubmit", method = RequestMethod.POST)
	public ModelAndView loginSubmit(@ModelAttribute("user") User user, Model model) {
		logger.info("{}.", user);
		System.out.println("-----loginSubmit" + user.getName());
		
		List<User> userList = userDao.findByCriteria(user);
		User userdb = null;
		if (userList.size() >= 1) {
			userdb = userList.get(0);
		}
		
		ModelAndView mv = new ModelAndView(); 
		
		if (null != userdb) {
			mv.addObject("message", "Hello " + userdb.getId() + userdb.getName()); 
			 mv.addObject("name", user.getName()); 
		} else {
			mv.addObject("message", "no user"); 
		}
		 
		 mv.setViewName("home");
	    return mv;
	}
}
