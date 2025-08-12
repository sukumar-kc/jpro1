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
public class ServiceRequestController 
{
	private static final Logger logger = LoggerFactory.getLogger(ServiceRequestController.class);
	
	/**
	 * @return 		ModelAndView	ModelAndView object
	 */
	@RequestMapping(value = "/loadCreateServiceRequestPage", method = RequestMethod.POST)
	public ModelAndView loadCreateServiceRequestPage() 
	{
		logger.info("Loading the Create Service Request page.");
		return new ModelAndView("CreateServiceRequest");
	}

	/**
	 * @return 		ModelAndView	ModelAndView object
	 */
	@RequestMapping(value = "/createServiceRequest", method = RequestMethod.POST)
	public ModelAndView createServiceRequest() 
	{
		logger.info("Creating a new Service Request.");
		return new ModelAndView("ServiceRequestCreated");
	}

	/**
	 * @return 		ModelAndView	ModelAndView object
	 */
	@RequestMapping(value = "/serviceRequestList", method = RequestMethod.POST)
	public ModelAndView serviceRequestList() 
	{
		logger.info("Fetching the list of Service Requests.");
		return new ModelAndView("ServiceRequestList");
	}
	
	/**
	 * @return 		ModelAndView	ModelAndView object
	 */
	@RequestMapping(value = "/serviceRequestDetails", method = RequestMethod.POST)
	public ModelAndView serviceRequestDetails() 
	{
		logger.info("Fetching details of a specific Service Request.");
		return new ModelAndView("ServiceRequestDetails");
	}
}
