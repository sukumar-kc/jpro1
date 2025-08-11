package com.devops.tera.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.devops.tera.model.UserBean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import javax.servlet.http.HttpSession;

/**
 * @author  Mahesh Kumar Palaniswamy
 * @version 0.1
 * @since   2014-12-08
 */
@Controller
public class LoginController 
{
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	private static final String USER_BEAN = "UserBean";
	
	// Use dependency injection for BCryptPasswordEncoder
	private final BCryptPasswordEncoder passwordEncoder;

	public LoginController(BCryptPasswordEncoder passwordEncoder) {
		this.passwordEncoder = passwordEncoder;
	}

	/**
	 * @param 		UserBean		UserBean object 
	 * @return 		ModelAndView	ModelAndView object
	 */
	@RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView loadLoginPage(@ModelAttribute(USER_BEAN) UserBean userBean) 
	{
		logger.info("In the method loadLoginPage of LoginController.");
		return (new ModelAndView("Login", USER_BEAN, userBean));
	}

	/**
	 * @param 		UserBean		UserBean object 
	 * @return 		ModelAndView	ModelAndView object
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute(USER_BEAN) UserBean userBean, HttpSession session) 
	{
		logger.info("In the method login of LoginController.");
		if (userBean.getLoginId() != null && !userBean.getLoginId().isEmpty() &&
			userBean.getPassword() != null && !userBean.getPassword().isEmpty()) {
			// Replace hardcoded credentials with a secure mechanism
			String storedEncodedPassword = getStoredEncodedPassword(userBean.getLoginId());
			if (storedEncodedPassword != null && passwordEncoder.matches(userBean.getPassword(), storedEncodedPassword)) {
				logger.info("Credentials verified successfully.");
				session.invalidate(); // Regenerate session to prevent session fixation
				session = session.getSession(true);
				session.setAttribute("user", userBean);
				return (new ModelAndView("Home", USER_BEAN, userBean));
			} else {
				logger.warn("Invalid credentials provided.");
			}
		} else {
			logger.error("Login ID or Password is null or empty.");
		}
		return (new ModelAndView("invalidCredentials"));
	}

	/**
	 * @param 		UserBean		UserBean object 
	 * @return 		ModelAndView	ModelAndView object
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public ModelAndView logout(@ModelAttribute(USER_BEAN) UserBean userBean, HttpSession session) 
	{
		logger.info("In the method logout of LoginController.");
		session.invalidate();
		return (new ModelAndView("Login", USER_BEAN, userBean));
	}

	// Simulated method to retrieve stored encoded password (replace with actual implementation)
	private String getStoredEncodedPassword(String loginId) {
		if ("admin".equals(loginId)) {
			return passwordEncoder.encode("admin"); // Replace with database retrieval logic
		}
		return null;
	}
}
