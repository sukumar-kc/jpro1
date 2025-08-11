package com.devops.tera.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.devops.tera.model.UserBean;

/**
 * @author  Mahesh Kumar Palaniswamy
 * @version 0.1
 * @since   2014-12-08
 */
@Controller
public class LoginController 
{
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	/**
	 * @param 		UserBean		UserBean object 
	 * @return 		ModelAndView	ModelAndView object
	 */
	@RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView loadLoginPage(@ModelAttribute("UserBean") UserBean userBean) 
	{
		logger.info("In the method loadLoginPage of LoginController.");
		return (new ModelAndView("Login","UserBean",userBean));
	}

	/**
	 * @param 		UserBean		UserBean object 
	 * @return 		ModelAndView	ModelAndView object
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("UserBean") UserBean userBean) 
	{
		System.out.println(userBean.getLoginId()+" "+userBean.getPassword());
		logger.info("In the method login of LoginController.");
		if(userBean.getLoginId().equals("admin")&&userBean.getPassword().equals("admin"))
		{
			System.out.println("Creds checked");
			return (new ModelAndView("Home","UserBean",userBean));
		}
		
		return (new ModelAndView("invalidCredentials"));
		
	}

	/**
	 * @param 		UserBean		UserBean object 
	 * @return 		ModelAndView	ModelAndView object
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public ModelAndView logout(@ModelAttribute("UserBean") UserBean userBean) 
	{
		logger.info("In the method logout of LoginController.");
		return (new ModelAndView("Login","UserBean",userBean));
	}

	/*
 	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model, @ModelAttribute("UserBean") UserBean userBean) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return (new ModelAndView("Login","UserBean",userBean));
		//return "Login";
	}
 */
}
