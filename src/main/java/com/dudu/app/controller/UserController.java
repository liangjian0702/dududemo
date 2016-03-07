package com.dudu.app.controller;

import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dudu.app.common.BaseController;
import com.dudu.app.entity.User;
import com.dudu.app.service.UserService;

@Controller
public class UserController extends BaseController {

	@Autowired
	UserService userService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = {"/","/home"}, method = RequestMethod.GET)
	public String init(Locale locale, Model model) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "home";
	}
	
	@RequestMapping(value = "/clearmessage", method = RequestMethod.GET)
	public String clearMessage(HttpSession httpSession) throws Exception {
		logger.info("httpSession {}.", httpSession);
		httpSession.removeAttribute("message");
		return "redirect:home";
	}


	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("user") User user, HttpSession httpSession, Locale locale)
			throws Exception {
		logger.info("{}.", user);

		DetachedCriteria criteria = DetachedCriteria.forClass(User.class);
		criteria.add(Restrictions.eq("name", user.getName()));
		criteria.add(Restrictions.eq("password", user.getPassword()));
		// criteria.add(Restrictions.eq("adminFlag", true));

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
			String message = super.messageSource.getMessage("lbl.MS0001", null, locale);
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
	

	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String regist(@ModelAttribute("user") User user, HttpSession httpSession) throws Exception {
		logger.info("{}", user);
		// check dumplicate
		DetachedCriteria criteria = DetachedCriteria.forClass(User.class);
		criteria.add(Restrictions.eq("name", user.getName()));
		List<User> userList = userService.findByCriteria(criteria);
		if (userList.size() == 0) {
			userService.save(user);
			httpSession.setAttribute("user", user.getName());
		}
		return "redirect:home";
	}
}
