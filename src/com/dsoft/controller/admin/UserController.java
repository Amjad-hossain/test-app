package com.dsoft.controller.admin;


import com.dsoft.bean.Cell;
import com.dsoft.bean.JasonBean;
import com.dsoft.entity.*;
import com.dsoft.service.AdminJdbcService;
import com.dsoft.service.AdminService;
import com.dsoft.util.Constants;
import com.dsoft.util.Utils;
import com.dsoft.validation.UserValidation;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Controller
@SessionAttributes("user")
public class UserController {  // to handle user related task

    private static Logger logger = Logger.getLogger(UserController.class);
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
    @RequestMapping(value = "/*/landingPage.html", method = RequestMethod.GET)
    public String userPanel(HttpServletRequest request, Model model) {
        try{
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        /*User user = (User)adminService.getAbstractBaseEntityByString(Entity.USER.getValue(),"userName",Utils.getLoggedUserName());
        request.getSession().setAttribute("loggUserId",user!= null ? user.getId():0);
        request.getSession().setAttribute("loggedUserEmail",user!= null ? user.getEmail():"");
        */
        model.addAttribute("mainTabId",Utils.getMessageBundlePropertyValue("mainTab.dashBoard"));
        model.addAttribute("subTabId",Utils.getMessageBundlePropertyValue("dashboard"));
        }catch (Exception ex) {
            logger.error("Landing page : " + ex);
        }
            return "admin/landingPage";
    }

    /*
    * Method for getting userList from database
    * @param HttpServletRequest request, Map map
    * @return type Map
    */
    @SuppressWarnings("unchecked")
    @RequestMapping(value = "/admin/completeUserList.html", method = RequestMethod.GET)
    public
    @ResponseBody
    Map userList(HttpServletRequest request, Map map) {
       /* List<User> userList = adminService.getAllUserList(fetchUserVoFromRequest(request));
        if (userList == null) {
            userList = new ArrayList<User>();
        }
        logger.debug("loading user list from db...." + userList.size());
        map.put("user", userList);*/
        return map;
    }


    /*
    * Method for viewing userList
    * @param HttpServletRequest request, Model model
    * @return type String
    */
    @RequestMapping(value = "/admin/userList.html", method = RequestMethod.GET)
    public String newUserList(HttpServletRequest request, Model model) {
        logger.debug("User Controller Get");
        List<User> userList = new ArrayList<User>();
        List employeeList = new ArrayList();
        try {
            userList = adminService.getAllUserList();   // load userList by Hibernate
//            employeeList = adminJdbcService.getEmployeeWithNonUserList();
            if(employeeList != null)
                logger.debug("SMN LOG: " +employeeList.size() );
        } catch ( Exception ex) {
            logger.debug("User Controller Exception :" + ex);
        }
//        adminService.addNode("User Management", 50, request);  // adding Breadcrumb
        model.addAttribute("userListForTable", userList);
        model.addAttribute("userList", userList);
        model.addAttribute("employeeList", employeeList);
        model.addAttribute("user", new User());
        model.addAttribute("roles", Role.getRoles());
        return "admin/userList";
    }

    /*
    * Method for viewing user add page
    * @param HttpServletRequest request, Map model
    * @return type String
    */
    @RequestMapping(value = "/admin/addUser.html", method = RequestMethod.GET)
    public String showRegistration(HttpServletRequest request, Map model) {
        User user = null;

        /*if(request.getParameter("id") != null && Utils.isValidNumber(request.getParameter("id")) && adminJdbcService.isUserIdExist(Long.parseLong(request.getParameter("id")))){
            user = (User) adminService.loadEntityById(Long.parseLong(request.getParameter("id")), "User");

        }else {   // otherwise initialize User as new object
            if(request.getParameter("id") != null)
                Utils.setErrorMessage(request,Utils.getMessageBundlePropertyValue("invalid.user.id"));

            user = new User();
        }*/


        model.put("roles", Role.getRoles());
        model.put("user", user);
        return "admin/user";
    }

    /*
    * Method to handle user form data after submitting from add user page
    * @param User user, HttpServletRequest request,BindingResult result, Map model
    * @return type String
    */
    @RequestMapping(value = "/admin/addUser.html", method = RequestMethod.POST)
    public @ResponseBody
    List<Map> processRegistration(HttpServletRequest request,@ModelAttribute("user") User user,  @RequestParam("id") long id,  BindingResult result, Map model) {

        logger.info("User add controller post start.");
        String userJasonObject="";
        String encryptedPassword;
        List<Map> list = new ArrayList<Map>();
       /* try {
            if(user.getId() == 0)  {
                userValidation.validate(user, result, adminService);          // set custom Validation by user
                encryptedPassword = Utils.encrypt(user.getGivenPassword());
                user.setPassword(encryptedPassword);
            } else {
                userValidation.validatePassword(user, result, adminService);
            }
            if (result.hasErrors()) {    // any error or invalid data from user form
                 for (Object object : result.getAllErrors()) {
                    if(object instanceof FieldError) {

                        FieldError fieldError = (FieldError) object;
                        String message = messageSource.getMessage(fieldError, null);
                        Map map= new HashMap();
                        map.put("fieldName",fieldError.getField());
                        map.put("message",message);
                        list.add(map);
                    }
                }
                    logger.error("User Post: Validation failed");
            } else {
                user.setUserType(PersonType.EMPLOYEE.getValue());
                adminService.saveOrUpdate(user);
            }
        } catch (Exception ex) {
            logger.error("Error while saving/updating user :: " + ex);
        }*/
        logger.info("User add controller post end.");
        return list;
    }

    /*
    * Method to handle user delete
    * @param HttpServletRequest request, Model model, Map map
    * @return type String
    */
    @RequestMapping(value = "/admin/userDelete.html", method = RequestMethod.GET)
    public String saveUpdateUser(HttpServletRequest request, Model model, Map map) {

       /* if(request.getParameter("id") != null && Utils.isValidNumber(request.getParameter("id"))
                && adminJdbcService.isUserIdExist(Long.parseLong(request.getParameter("id")))){
            adminService.deleteEntityById(Long.parseLong(request.getParameter("id")), "User");
//            Utils.setGreenMessage(request, Utils.getMessageBundlePropertyValue("user.delete.message")); // set deletion message
        }else {
            Utils.setErrorMessage(request,Utils.getMessageBundlePropertyValue("invalid.user.id"));
        }

*/

        return "admin/userList";
    }

    /*
    * Method to show change password page
    * @param HttpServletRequest request, Model model, Map map
    * @return type String
    */
    @RequestMapping(value = "/*/changePassword.html", method = RequestMethod.GET)
    public String changePassword(HttpServletRequest request, Model model, Map map) {
      /* User user = (User)adminService.getAbstractBaseEntityByString(Entity.USER.getValue(),"userName",Utils.getLoggedUserName());
        model.addAttribute("user",user);
        adminService.addNode("Change Password",7,request);*/
        return "common/changePassword";
    }

    /*
    * Method to handle change password form data
    * @param User user, HttpServletRequest request, BindingResult result, Map model,SessionStatus status
    * @return type String
    */
    @RequestMapping(value = "/*/changePassword.html", method = RequestMethod.POST)
    public String changePasswordPost(User user, HttpServletRequest request,
                                      BindingResult result, Map model,SessionStatus status) {
       /* passwordChangeValidation.validate(user, result, adminService); // custom validation
        if (result.hasErrors()) {
            model.put("user", user);
            return "common/changePassword";
        } else {

            try {
                adminService.saveOrUpdate(user); // save or update User objects
                status.setComplete();
            } catch (Exception ex) {
                logger.debug("Error while saving/updating user :: " + ex);
            }
            Utils.setGreenMessage(request,Utils.getMessageBundlePropertyValue("password.changed.message")); // set successful message*/
            return "common/changePassword";
        //}
    }

    /*
    * Method for cancel buttons action
    * @param User user, HttpServletRequest request
    * @return type String
    */
    @RequestMapping(value = "/*/cancelButtonActionForAll.html", method = RequestMethod.GET)
    public String cancelButtonActionForAll(HttpServletRequest request) {
        String referrer = request.getHeader("referer");
        logger.debug("Refferer :"+referrer);
        return "redirect:"+referrer;
    }



    @RequestMapping(value = "admin/getUser.html", method = RequestMethod.GET)
    public @ResponseBody
    User getControl(HttpServletRequest request,  @RequestParam("userId") long userId, Model model) {
        logger.info("Get user in ajax start.");

        User user = new User();
        String employeeName = "";
       /* try {
            if(userId > 0) {
                user = (User)adminService.loadEntityById(userId, Constants.USER);
                if(PersonType.EMPLOYEE.getValue().equals(user.getUserType())){
                employeeName = adminJdbcService.getEmployeeNameById(user.getUserTypeId());
                user.setEmployeeName(employeeName);
                }

            } else {
                user = new User();
            }
            model.addAttribute("user", user);
        }catch (Exception ex) {
            logger.error("CERROR: Get Control List Exception : " + ex);
        }*/
        logger.info("Get user in ajax end.");
        return user;
    }


    /*
       * Method for cancel buttons action
       * @param User user, HttpServletRequest request
       * @return type String
       */
    @RequestMapping(value = "/*/testAjaxCall.html", method = RequestMethod.POST)
    public @ResponseBody User testAjaxCall(HttpServletRequest request) {
        String referrer = request.getHeader("referer");
        logger.debug("Refferer :"+referrer);
        return new User();
    }

    @RequestMapping(value = "/*/getUserJASON.html", method = RequestMethod.POST,produces = {"application/json"})
    public @ResponseBody User getControlList(HttpServletRequest request) {
        logger.debug("User JASON controller");
        String  page = request.getParameter("page") != null ? request.getParameter("page") : "1";
        String rp = request.getParameter("rp") != null ? request.getParameter("rp") : "10";
        String sortname = request.getParameter("sortname") != null ? request.getParameter("sortname") : "assignment_size";
        String sortorder = request.getParameter("sortorder") != null ? request.getParameter("sortorder") : "desc";
        String query = request.getParameter("query") != null ? request.getParameter("query") : "false";
        String qtype = request.getParameter("qtype") != null ? request.getParameter("qtype") : "false";
        JasonBean jasonData = new JasonBean();

        int totalItems = 0 ;
        List<Cell> entry = new ArrayList<Cell>();
        List userList = new ArrayList<User>();

        try {

            totalItems= adminService.getEntitySize(Constants.USER);
            userList  = adminJdbcService.getPartialDataList( Utils.parseInteger(page), Utils.parseInteger(rp), qtype, query , sortname, sortorder, Constants.USER_TABLE);

            if(userList != null) {
                logger.debug("SMNLOG: userList:"+ userList.size()+" totalItems:"+totalItems);
                jasonData.setPage(Utils.parseInteger(page));
                for(Object obj : userList) {
                    User user= new User();
                    Cell cell = new Cell();
                    Map map = (Map) obj;
                    user.setUserName(map.get("user_name") != null ? map.get("user_name").toString() : "");
                    user.setRole(map.get("role") != null ? map.get("role").toString() : "");
                    if(map.get("is_active") != null && ("true".equals(map.get("is_active").toString().trim()))) {
                        user.setUserActiveCheckBoxHtml(Utils.getMessageBundlePropertyValue("user.selected.checkbox.html"));
                    } else {
                        user.setUserActiveCheckBoxHtml(Utils.getMessageBundlePropertyValue("user.not.selected.checkbox.html"));
                    }
                    user.setUserEditButtonHtml(Utils.getMessageBundlePropertyValue("user.edit.button.html"));
                    user.setUserDeleteButtonHtml(Utils.getMessageBundlePropertyValue("user.delete.button.html"));

                    user.setId(map.get("id") != null ? ((Number)map.get("id")).intValue() : 0 );
                    cell.setId(map.get("id") != null ? ((Number)map.get("id")).intValue() : 0 );

                    cell.setCell(user);
                    entry.add(cell);
                }
                jasonData.setRows(entry);
                jasonData.setTotal(totalItems);
            } else {
                logger.debug("No User Found");
            }
        }catch (Exception ex) {
            logger.debug("CERROR: Get User List Exception : " + ex);
        }

        return new User();
    }
}