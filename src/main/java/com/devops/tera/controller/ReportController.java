package com.devops.tera.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author  Mahesh Kumar Palaniswamy
 * @version 0.1
 * @since   2014-12-08
 */
@Controller
public class ReportController 
{
	
	private static final Logger logger = LoggerFactory.getLogger(ReportController.class);
	
	/**
	 * @return 		ModelAndView	ModelAndView object
	 */
	@RequestMapping(value = "/report", method = RequestMethod.POST)
	public ModelAndView report() 
	{
		logger.info("In the method report of ReportController.");
		return (new ModelAndView("Report"));
	}
}
