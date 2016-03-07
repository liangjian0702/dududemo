package com.dudu.app.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dudu.app.entity.User;
import com.dudu.app.service.UserService;

@Controller
public class LoginCotnroller {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	UserService userService;
    @Autowired
    private MessageSource messageSource;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginSubmit(@ModelAttribute("user") User user, HttpSession httpSession, Locale locale) {
		logger.info("{}.", user);

		DetachedCriteria criteria = DetachedCriteria.forClass(User.class);
		criteria.add(Restrictions.eq("name", user.getName()));
		criteria.add(Restrictions.eq("password", user.getPassword()));
//		criteria.add(Restrictions.eq("adminFlag", true));
		
		List<User> userList = userService.findByCriteria(criteria);
		User userdb = null;
		if (userList.size() >= 1) {
			userdb = userList.get(0);
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:home");
		if (null != userdb) {
			System.out.println(userdb.getName());
			httpSession.setAttribute("user", userdb.getName());
		} else {
			String message = messageSource.getMessage("lbl.MS0001", null, locale);
			System.out.println(message);
			httpSession.setAttribute("message", message);
		}
		return mv;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession httpSession) {
		httpSession.removeAttribute("user");
		return "redirect:home";
	}
}
