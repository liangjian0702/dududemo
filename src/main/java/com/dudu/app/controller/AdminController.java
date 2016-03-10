package com.dudu.app.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dudu.app.common.BaseController;
import com.dudu.app.constants.Constants;
import com.dudu.app.entity.User;
import com.dudu.app.service.UserService;

@Controller
@RequestMapping(value="/admin")
public class AdminController extends BaseController {

	@Autowired
	UserService userService;

	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String init(HttpSession httpSession) throws Exception {
		logger.info("init {}", httpSession);
		httpSession.removeAttribute("user");
		httpSession.removeAttribute("message");
//		throw new Exception("this is a test");	
		return "/admin/login";
	}

	@RequestMapping(value = { "/logout" }, method = RequestMethod.GET)
	public String logout(HttpSession httpSession) throws Exception {
		logger.info("logout {}", httpSession);
		httpSession.removeAttribute("user");
		return "redirect:/admin/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("user") User user, HttpSession httpSession) throws Exception {
		logger.info("{}.", user);
		String view = "/admin/login";
		// search admin user
		DetachedCriteria criteria = DetachedCriteria.forClass(User.class);
		criteria.add(Restrictions.eq("name", user.getName()));
		criteria.add(Restrictions.eq("password", user.getPassword()));
		criteria.add(Restrictions.eq("adminFlag", Boolean.TRUE));
		List<User> userList = userService.findByCriteria(criteria);
		User userdb = null;
		if (userList.size() >= 1) {
			userdb = userList.get(0);
		}
		if (null != userdb) {
			System.out.println(userdb.getName());
			httpSession.setAttribute("user", userdb.getName());
			view = REDIRECT_URL_ADMIN_HOME;
		} else {
			httpSession.setAttribute("message", "用户名或密码错误!");
		}
		return view;
	}

	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public String home(Model model) throws Exception {
		logger.info("home {}", model);
		return URL_ADMIN_HOME;
	}

	@RequestMapping(value = { "/hotel" }, method = RequestMethod.GET)
	public String hotel(Model model) throws Exception {
		logger.info("hotel {}", model);
		model.addAttribute("module", MODULE_HOTEL);
		return URL_ADMIN_HOME;
	}

	@RequestMapping(value = { "/car" }, method = RequestMethod.GET)
	public String car(Model model) throws Exception {
		logger.info("car {}", model);
		model.addAttribute("module", MODULE_CAR);
		return URL_ADMIN_HOME;
	}

	@RequestMapping(value = { "/guide" }, method = RequestMethod.GET)
	public String guide(Model model) throws Exception {
		logger.info("guide {}", model);
		model.addAttribute("module", MODULE_GUIDE);
		return URL_ADMIN_HOME;
	}
}
