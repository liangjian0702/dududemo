package com.dudu.app.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

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
	public ModelAndView loginSubmit(@ModelAttribute("user") User user, HttpSession httpSession) {
		logger.info("{}.", user);

		List<User> userList = userDao.findByCriteria(user);
		User userdb = null;
		if (userList.size() >= 1) {
			userdb = userList.get(0);
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		if (null != userdb) {
			System.out.println(userdb.getName());
			httpSession.setAttribute("user", userdb.getName());
		}
		return mv;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession httpSession) {
		httpSession.removeAttribute("user");
		return "home";
	}
}
