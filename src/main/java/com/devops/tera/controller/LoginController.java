package com.devops.tera.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.devops.tera.model.UserBean;
import com.devops.tera.service.AuthenticationService;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

/**
 * @author  Mahesh Kumar Palaniswamy
 * @version 0.1
 * @since   2014-12-08
 */
@Controller
@Validated
public class LoginController 
{
    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
    private static final String USER_BEAN = "UserBean";

    @Autowired
    private AuthenticationService authenticationService;

    /**
     * Load the login page.
     * @param userBean UserBean object
     * @return ModelAndView object
     */
    @RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView loadLoginPage(@ModelAttribute(USER_BEAN) UserBean userBean) 
    {
        logger.info("In the method loadLoginPage of LoginController.");
        return new ModelAndView("Login", USER_BEAN, userBean);
    }

    /**
     * Handle user login.
     * @param userBean UserBean object
     * @param session HttpSession object
     * @return ModelAndView object
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(@Valid @ModelAttribute(USER_BEAN) UserBean userBean, HttpSession session) 
    {
        logger.info("User attempting to log in.");

        try {
            if (authenticationService.authenticate(userBean.getLoginId(), userBean.getPassword())) {
                logger.info("User authenticated successfully.");

                // Invalidate the old session and create a new one
                session.invalidate();
                session = session.getSession(true);
                session.setAttribute("user", userBean);

                return new ModelAndView("Home", USER_BEAN, userBean);
            }
        } catch (Exception e) {
            logger.error("Error during authentication: {}", e.getMessage());
            return new ModelAndView("invalidCredentials", "errorMessage", "An error occurred during login. Please try again.");
        }

        logger.warn("Invalid login attempt.");
        return new ModelAndView("invalidCredentials", "errorMessage", "Invalid login credentials. Please try again.");
    }

    /**
     * Handle user logout.
     * @param session HttpSession object
     * @return ModelAndView object
     */
    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public ModelAndView logout(HttpSession session) 
    {
        logger.info("In the method logout of LoginController.");
        session.invalidate();
        return new ModelAndView("Login");
    }
}
