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
import org.springframework.validation.BindingResult;
import javax.validation.Valid;

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
		return getLoginView(userBean);
	}

	/**
	 * @param 		UserBean		UserBean object 
	 * @return 		ModelAndView	ModelAndView object
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@Valid @ModelAttribute(USER_BEAN) UserBean userBean, BindingResult result, HttpSession session) 
	{
		logger.info("In the method login of LoginController.");
		if (result.hasErrors()) {
			logger.error("Validation errors in UserBean.");
			return new ModelAndView("Login", USER_BEAN, userBean);
		}     
		if (userBean.getLoginId() != null && !userBean.getLoginId().isEmpty() &&
			userBean.getPassword() != null && !userBean.getPassword().isEmpty()) {
			// Replace hardcoded credentials with a secure mechanism
			String storedEncodedPassword = getStoredEncodedPassword(userBean.getLoginId());
			if (storedEncodedPassword != null && passwordEncoder.matches(userBean.getPassword(), storedEncodedPassword)) {
				logger.info("Credentials verified successfully.");
				session.invalidate(); // Invalidate the old session
				session = session.getSession(true); // Create a new session
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
		return getLoginView(userBean);
	}

	// Refactored common logic for returning the login view
	private ModelAndView getLoginView(UserBean userBean) {
		return new ModelAndView("Login", USER_BEAN, userBean);
	}

	// Replace hardcoded credentials with a secure mechanism
	private String getStoredEncodedPassword(String loginId) {
		// Replace hardcoded credentials with database retrieval logic
		// Example: Fetch from a database or secure storage
		// This is a placeholder implementation
		if ("admin".equals(loginId)) {
			return "<stored_encoded_password_from_database>"; // Replace with actual retrieval logic
		}
		return null;
	}
}
