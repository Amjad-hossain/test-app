package com.dsoft.controller.admin;

import com.dsoft.entity.*;
import com.dsoft.service.AdminJdbcService;
import com.dsoft.service.AdminService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Controller
@SessionAttributes({"control", "holiday"})
public class AdminController {

    private static Logger logger = Logger.getLogger(AdminController.class);
    @Autowired(required = true)
    private AdminService adminService;
    @Autowired(required = true)
    private AdminJdbcService adminJdbcService;

    @RequestMapping(value = "/*/getAllStudent.html", method = RequestMethod.GET)
    public String getAllStudent(HttpServletRequest request, Model model) {

        try {
            List<Student> students = adminService.getAllStudent();
            logger.debug("AMLOG:: Student list size:: "+ (students != null? students.size() : students));
            model.addAttribute(students);
        }catch (Exception ex) {
            logger.error("All Student fetch exception:: " + ex);
        }
        return null;
    }

    @RequestMapping(value = "/*/getStudent.html", method = RequestMethod.GET)
    public String getStudent(HttpServletRequest request, Model model) {

        String studentId = request.getParameter("studentId");
        try {
            Student student = adminService.getStudent(studentId);
            logger.debug("AMLOG:: Student profile:: "+ student);
            model.addAttribute(student);
        }catch (Exception ex) {
            logger.error("Student fetch exception:: " + ex);
        }
        return null;
    }

    @RequestMapping(value = "/*/saveStudent.html", method = RequestMethod.POST)
    public String saveProfile(HttpServletRequest request, @ModelAttribute("student") Student student) {

        try {
            adminService.saveStudent(student);
            logger.debug("AMLOG:: Profile:: "+ student);
        }catch (Exception ex) {
            logger.error("Save Profile exception:: " + ex);
        }
        return null;
    }


}

