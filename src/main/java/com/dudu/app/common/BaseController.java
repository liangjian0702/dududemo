package com.dudu.app.common;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BaseController {
	
	protected static final Logger logger = LoggerFactory.getLogger(BaseController.class);

	@SuppressWarnings("unused")
	@Autowired
	protected MessageSource messageSource;
	
	// Convert a predefined exception to an HTTP Status code
	@ResponseStatus(value = HttpStatus.CONFLICT, reason = "Data integrity violation") // 409
	@ExceptionHandler(DataIntegrityViolationException.class)
	public void conflict() {
		logger.info("exception {}conflict");
		// Nothing to do
	}

	// Specify the name of a specific view that will be used to display the
	// error:
	@ExceptionHandler({ SQLException.class, DataAccessException.class })
	public String databaseError() {
		logger.info("exception {}databaseError");
		// Nothing to do. Returns the logical view name of an error page, passed
		// to
		// the view-resolver(s) in usual way.
		// Note that the exception is _not_ available to this view (it is not
		// added to
		// the model) but see "Extending ExceptionHandlerExceptionResolver"
		// below.
		return "common/error";
	}

	// Total control - setup a model and return the view name yourself. Or
	// consider
	// subclassing ExceptionHandlerExceptionResolver (see below).
	@ExceptionHandler(Exception.class)
	public ModelAndView handleError(HttpServletRequest req, Exception exception) {
		logger.info("handleError exception {}",exception);
		logger.error("Request: " + req.getRequestURL() + " raised " + exception);

		ModelAndView mav = new ModelAndView();
		mav.addObject("exception", exception);
		mav.addObject("url", req.getRequestURL());
		mav.setViewName("common/error");
		return mav;
	}

}
