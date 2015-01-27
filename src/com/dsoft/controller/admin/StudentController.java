package com.dsoft.controller.admin;


import com.dsoft.entity.Profile;
import com.dsoft.entity.Standard;
import com.dsoft.entity.Student;
import com.dsoft.service.AdminJdbcService;
import com.dsoft.service.AdminService;
import com.dsoft.util.Utils;
import com.dsoft.validation.UserValidation;
import org.apache.commons.codec.binary.Base64;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import sun.misc.BASE64Decoder;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import java.awt.image.BufferedImage;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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

    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
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
    @RequestMapping(value = "/*/studentProfileList.html", method = RequestMethod.GET)
    public String studentProfileListView(HttpServletRequest request, Model model) {

        logger.debug("::Student Profile List View Controller::");
        return "common/studentProfileList";
    }

   /*
    * Method for viewing landing Page
    * @param HttpServletRequest request, Model model
    * @return type String( or any .jsp File)
    *
    */
    @RequestMapping(value = "/*/studentRegistration.html", method = RequestMethod.GET)
    public String studentRegistrationView(HttpServletRequest request, Model model) {

        logger.debug("::Student Profile View Controller::");
        Student student = new Student();
        List<Standard> standardList = new ArrayList<Standard>();

        try {
            standardList = adminService.getAllStandardList();
        } catch (Exception e) {
            logger.debug("ERROR:"+e);
        }
        Profile profile = new Profile();
        profile.setDistrict("Dhaka");
        profile.setThana("Banani");
        profile.setPostOffice("Banani-postoffice");
        student.setProfile(profile);
        student.setStandardList(standardList);
        model.addAttribute("student",student);
        return "common/studentRegistration";
    }

    /*
 * Method for viewing landing Page
 * @param HttpServletRequest request, Model model
 * @return type String( or any .jsp File)
 *
 */
    @RequestMapping(value = "/*/studentRegistration.html", method = RequestMethod.POST)
    public String studentRegistrationSave(HttpServletRequest request,@ModelAttribute("student") Student student, Model model) {

        logger.debug("::Student Profile Controller POST::");
        logger.debug("::Student:"+student);
        String uploadPath = "uploadFiles";
        String uploadFolderForStudents= "studentPhoto";

        String uploadPathForStudents = (System.getProperty("user.home") + File.separator + uploadPath + File.separator + uploadFolderForStudents + File.separator + "" + Utils.getTodaysDate().getTime()+"_"+student.getProfile().getName()+".png");
        File dirForStudentsPhoto = new File(System.getProperty("user.home") + File.separator + uploadPath + File.separator + uploadFolderForStudents);
        try {
            if (!dirForStudentsPhoto.exists()) {
                dirForStudentsPhoto.mkdirs();
            }
            logger.debug("Image writting start... to file:"+student.getProfile().getBinaryFileData());
            BufferedImage image = null;
            byte[] imageByte;

                byte[] btDataFile = new sun.misc.BASE64Decoder().decodeBuffer(student.getProfile().getBinaryFileData());
                File of = new File(uploadPathForStudents);
                FileOutputStream osf = new FileOutputStream(of);
                osf.write(btDataFile);
                osf.flush();

            logger.debug("Image write complete....");
            student.getProfile().setPhotoPath(uploadPathForStudents);
            adminService.saveStudent(student);
            Utils.setGreenMessage(request, Utils.getMessageBundlePropertyValue("student.save.success.msg"));
        } catch (Exception ex) {
            ex.printStackTrace();
            logger.error("CERROR:: Failed to write Image" + ex);

        }

        return "common/studentRegistration";
    }


}