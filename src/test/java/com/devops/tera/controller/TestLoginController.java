package com.devops.tera.controller;

import static org.junit.Assert.assertEquals;

import org.aspectj.lang.annotation.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.web.servlet.ModelAndView;

import com.devops.tera.model.UserBean;


public class TestLoginController 
{
	private static UserBean userBean;
	private static LoginController loginController;
	ModelAndView modelAndView;
	
	@BeforeClass
	public static void beforeTest()
	{
		userBean = new UserBean();
		loginController = new LoginController();
	}
	
	@Test
	public void testLoginLoadPage()
	{
		modelAndView = loginController.loadLoginPage(userBean);
		assertEquals("Login", modelAndView.getViewName());
	}
	
	@Test
	public void testLogin()
	{
		userBean.setLoginId("admin");
		userBean.setPassword("admin");
		modelAndView = loginController.loadLoginPage(userBean);
		modelAndView = loginController.login(userBean);
		assertEquals("Home", modelAndView.getViewName());
	}
	
	@Test
	public void testInvalidCredentials()
	{
		userBean.setLoginId("admin");
		userBean.setPassword("admin123");
		modelAndView = loginController.loadLoginPage(userBean);
		modelAndView = loginController.login(userBean);
		assertEquals("invalidCredentials", modelAndView.getViewName());
	}
	
	@Test
	public void testLogout()
	{
		modelAndView=loginController.logout(userBean);
		assertEquals("Login", modelAndView.getViewName());
	}
}
