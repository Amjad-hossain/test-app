package com.dsoft.controller.admin;


import com.dsoft.service.AdminJdbcService;
import com.dsoft.service.AdminService;
import com.dsoft.validation.UserValidation;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@SessionAttributes("user")
public class StudentController {  // to handle user related task

    private static Logger logger = Logger.getLogger(StudentController.class);
    @Autowired(required = true)
    private AdminService adminService;
    @Autowired(required = true)
    private UserValidation userValidation;
    @Autowired(required = true)
    private AdminJdbcService adminJdbcService;
    @Autowired
    private MessageSource messageSource;

    public void setUserValidation(
            UserValidation userValidation) {
        this.userValidation = userValidation;
    }

    /*
    * Method for viewing landing Page
    * @param HttpServletRequest request, Model model
    * @return type String( or any .jsp File)
    *
    */
    @RequestMapping(value = "/*/studentProfileView.html", method = RequestMethod.GET)
    public String getStudentProfile(HttpServletRequest request, Model model) {

        return "common/studentProfile";
    }

   /*
    * Method for viewing landing Page
    * @param HttpServletRequest request, Model model
    * @return type String( or any .jsp File)
    *
    */
    @RequestMapping(value = "/*/studentRegistration.html", method = RequestMethod.GET)
    public String studentRegistrationView(HttpServletRequest request, Model model) {

        return "common/studentRegistration";
    }


}