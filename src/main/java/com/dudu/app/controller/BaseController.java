package com.dudu.app.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaseController {
	private static final Logger logger = LoggerFactory.getLogger(BaseController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = {"/","/home"}, method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "home";
	}
	
	@RequestMapping(value = "/clearmessage", method = RequestMethod.GET)
	public String clearMessage(HttpSession httpSession) {
		logger.info("httpSession {}.", httpSession);
		httpSession.removeAttribute("message");
		return "redirect:home";
	}
}
