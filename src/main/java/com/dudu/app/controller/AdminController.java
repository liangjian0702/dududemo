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

import com.dudu.app.constants.Constants;
import com.dudu.app.entity.User;
import com.dudu.app.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController implements Constants {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	UserService userService;

	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String init(HttpSession httpSession) {
		logger.info("init {}", httpSession);
		httpSession.removeAttribute("user");
		httpSession.removeAttribute("message");
		return "/admin/login";
	}
	@RequestMapping(value = { "/logout" }, method = RequestMethod.GET)
	public String logout(HttpSession httpSession) {
		logger.info("logout {}", httpSession);
		httpSession.removeAttribute("user");
		return "redirect:/admin/";
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("user") User user, HttpSession httpSession) {
		logger.info("{}.", user);
		String view = "/admin/login";
		// search admin user
		user.setAdminFlag(Boolean.TRUE);
		List<User> userList = userService.findByCriteria(user);
		User userdb = null;
		if (userList.size() >= 1) {
			userdb = userList.get(0);
		}

		if (null != userdb) {
			System.out.println(userdb.getName());
			httpSession.setAttribute("user", userdb.getName());
			view = "redirect:/admin/home";
		} else {
			httpSession.setAttribute("message", "用户名或密码错误!");
		}
		return view;
	}
	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("home {}", model);
		model.addAttribute("module", HOTEL_JSP);
		return ADMIN_HOME;
	}

	@RequestMapping(value = { "/hotel" }, method = RequestMethod.GET)
	public String hotel(Model model) {
		logger.info("hotel {}", model);
		model.addAttribute("module", HOTEL_JSP);
		return ADMIN_HOME;
	}
	@RequestMapping(value = { "/car" }, method = RequestMethod.GET)
	public String car(Model model) {
		logger.info("car {}", model);
		model.addAttribute("module", CAR_JSP);
		return ADMIN_HOME;
	}
	
	@RequestMapping(value = { "/guide" }, method = RequestMethod.GET)
	public String guide(Model model) {
		logger.info("guide {}", model);
		model.addAttribute("module", GUIDE_JSP);
		return ADMIN_HOME;
	}
	
	

}
