package com.dudu.app.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dudu.app.entity.User;
import com.dudu.app.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = {"/",""}, method = RequestMethod.GET)
	public String login() {
		return "/admin/login";
	}
	@RequestMapping(value = {"/home"}, method = RequestMethod.GET)
	public String home() {
		return "/admin/home";
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("user") User user, HttpSession httpSession) {
		logger.info("{}.", user);

		List<User> userList = userService.findByCriteria(user);
		User userdb = null;
		if (userList.size() >= 1) {
			userdb = userList.get(0);
		}
		ModelAndView mv = new ModelAndView();
		
		if (null != userdb) {
			System.out.println(userdb.getName());
			httpSession.setAttribute("user", userdb.getName());
			mv.setViewName("/admin/home");
		} else {
			httpSession.setAttribute("message", "用户名或密码!");
			mv.setViewName("/admin/login");
		}
		return mv;
	}
}
