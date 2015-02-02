package com.dsoft.controller.admin;


import com.dsoft.bean.Cell;
import com.dsoft.bean.JasonBean;
import com.dsoft.entity.Profile;
import com.dsoft.entity.Standard;
import com.dsoft.entity.Student;
import com.dsoft.entity.User;
import com.dsoft.service.AdminJdbcService;
import com.dsoft.service.AdminService;
import com.dsoft.util.Constants;
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
import java.util.Map;

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
        logger.debug("::Student Profile View Controller::");
        String studentId =request.getParameter("studentId");

        //@ModelAttribute("studentId") Long studentId,

        logger.debug("::Student Id:"+studentId);
        Student student = new Student();
        try{
            student = adminService.getStudent(studentId.toString());
            model.addAttribute("student",student);

        }catch (Exception e){

        }


        return "common/studentProfile";
    }

   /*
    * Method for viewing landing Page
    * @param HttpServletRequest request, Model model
    * @return type String( or any .jsp File)
    *
    */
    @RequestMapping(value = "/*/studentProfileList.html", method = RequestMethod.GET)
    public String studentProfinleListView(HttpServletRequest request, Model model) {

        logger.debug("::Student Profile List View Controller::");
        return "common/studentProfileList";
    }

   /*
    * Method for viewing landing Page
    * @param HttpServletRequest request, Model model
    * @return type String( or any .jsp File)
    *
    */
    @RequestMapping(value = "/*/testView.html", method = RequestMethod.GET)
    public String getTestView(HttpServletRequest request, Model model) {

        logger.debug("::Test View Controller::");

        Student student=new Student();
        student.setName("Habib");
        student.setFatherName("Habib Senior");
        student.setMotherName("ABC");
        model.addAttribute("student",student);
        model.addAttribute("rony","i am rony");
        return "common/testView";
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

        student.setDistrict("Dhaka");
        student.setThana("Banani");
        student.setPostOffice("Banani-postoffice");
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

        String uploadPathForStudents = (System.getProperty("user.home") + File.separator + uploadPath + File.separator + uploadFolderForStudents + File.separator + "" + Utils.getTodaysDate().getTime()+"_"+student.getName()+".png");
        File dirForStudentsPhoto = new File(System.getProperty("user.home") + File.separator + uploadPath + File.separator + uploadFolderForStudents);
        try {
            if (!dirForStudentsPhoto.exists()) {
                dirForStudentsPhoto.mkdirs();
            }
            logger.debug("Image writting start... to file:"+student.getBinaryFileData());
            BufferedImage image = null;
            byte[] imageByte;

                byte[] btDataFile = new sun.misc.BASE64Decoder().decodeBuffer(student.getBinaryFileData());
                File of = new File(uploadPathForStudents);
                FileOutputStream osf = new FileOutputStream(of);
                osf.write(btDataFile);
                osf.flush();

            logger.debug("Image write complete....");
            student.setPhotoPath(uploadPathForStudents);
            adminService.saveStudent(student);
            Utils.setGreenMessage(request, Utils.getMessageBundlePropertyValue("student.save.success.msg"));
        } catch (Exception ex) {
            ex.printStackTrace();
            logger.error("CERROR:: Failed to write Image" + ex);

        }

        return "common/studentRegistration";
    }

    @RequestMapping(value = "/*/getStudentJSON.html", method = RequestMethod.POST)
    public @ResponseBody
    JasonBean getControlList(HttpServletRequest request) {
        logger.debug("Student cccccccc JSON controller");
        String  page = request.getParameter("page") != null ? request.getParameter("page") : "1";
        String rp = request.getParameter("rp") != null ? request.getParameter("rp") : "10";
        String sortname = request.getParameter("sortname") != null ? request.getParameter("sortname") : "assignment_size";
        String sortorder = request.getParameter("sortorder") != null ? request.getParameter("sortorder") : "desc";
        String query = request.getParameter("query") != null ? request.getParameter("query") : "false";
        String qtype = request.getParameter("qtype") != null ? request.getParameter("qtype") : "false";
        JasonBean jasonData = new JasonBean();

        int totalItems = 0 ;
        List<Cell> entry = new ArrayList<Cell>();
        List<Student> studentList = new ArrayList<Student>();

        try {

            totalItems = adminService.getEntitySize(Constants.STUDENT_CLASS);
            logger.debug("totalItems:"+totalItems);
            studentList  = adminService.getPartialDataList(Utils.parseInteger(page), Utils.parseInteger(rp), qtype, query, sortname, sortorder,
                    Constants.STUDENT_CLASS);

            if(studentList != null) {
                logger.debug("SMNLOG: studentList:"+ studentList.size()+" totalItems:"+totalItems);
                jasonData.setPage(Utils.parseInteger(page));
                for(Student student : studentList) {
                    Cell cell = new Cell();
                    logger.debug("SMNLOG:Student:"+student);

                    Date admissionDate = student.getCreated() != null ? student.getCreated() : new Date();
                    Date dof = student.getDateOfBirth() != null ? student.getDateOfBirth() : new Date();
                    student.setAdmissionDateStr(Utils.dateToStrWithFormat(admissionDate, Constants.MONTH_DAY_YEAR));
                    student.setDateOfBirthDateStr(Utils.dateToStrWithFormat(dof, Constants.MONTH_DAY_YEAR));
                    student.setImgSrcHtml("<img class='tableImgView' src='"+student.getPhotoPath()+"'>");
                    student.setClassName(student.getStandard().getCode());



                    cell.setId(student.getId());

                    cell.setCell(student);
                    entry.add(cell);
                }
                jasonData.setRows(entry);
                jasonData.setTotal(totalItems);
            } else {
                logger.debug("No Student Found");
            }
        }catch (Exception ex) {
            logger.debug("CERROR: Get Student List Exception : " + ex);
        }

        return jasonData;
    }

}