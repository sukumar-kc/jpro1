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
	 * Handles POST requests to the /report endpoint and returns the Report view.
	 * Includes error handling and ensures proper logging.
	 * 
	 * @return ModelAndView object pointing to the Report view.
	 */
	@RequestMapping(value = "/report", method = RequestMethod.POST)
	public ModelAndView report() {
        try {
            logger.info("In the method report of ReportController.");
            return new ModelAndView("Report");
        } catch (Exception e) {
            logger.error("Error occurred in the report method: ", e);
            return new ModelAndView("error"); // Redirect to an error page if needed.
        }
    }
}
