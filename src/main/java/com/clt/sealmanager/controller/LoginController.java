package com.clt.sealmanager.controller;

import com.clt.sealmanager.dao.IAdminDao;
import com.clt.sealmanager.dao.impl.AdminDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.clt.sealmanager.model.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
//@RequestMapping("test")
public class LoginController {

    private IAdminDao adminDao;

    protected HttpServletRequest request;
    protected HttpServletResponse response;
    protected HttpSession session;

    @ModelAttribute
    public void setReqAndRes(HttpServletRequest request, HttpServletResponse response){
        this.request = request;
        this.response = response;
        this.session = request.getSession();
        adminDao = new AdminDao();
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String redirect() {
        return "redirect:index";
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
//        return new ModelAndView("index", "command", new Admin());
        return "index";
    }

    @RequestMapping(value="/login", method = RequestMethod.POST)
    public String login(@ModelAttribute("SpringWeb")Admin admin,
                             ModelMap model,HttpSession session) {

        Admin login_admin = adminDao.findAdminById(admin.getUserId());

        if(login_admin!= null){
            if(admin.getUserPwd().equals(login_admin.getUserPwd())){
                session.setAttribute("userId", admin.getUserId());
                return "index2";
            }else{
                return "error";
            }
        }
        return "error";
    }

    /**
     * 查询Admin 列表信息
     * @param model
     * @return admin.jsp
     */
    @RequestMapping(value="/admin_list", method = RequestMethod.GET)
    public String AdminList(ModelMap model) {
        model.addAttribute("admins", adminDao.findAllAdmin());
        return "admin";
    }

    @RequestMapping(value="/admin_add", method = RequestMethod.POST)
    public String addAdmin(@ModelAttribute("SpringWeb")Admin admin) {
        admin.setUserStatus(1);
        adminDao.addAdmin(admin);
        return "redirect:admin_list";
    }

    @RequestMapping(value="/changeAdminStatus", method = RequestMethod.POST)
    public String changeAdminStatus(ModelMap model,String willChange) {
        Admin admin = adminDao.findAdminById(willChange);
        if(admin.getUserStatus()==0){
            admin.setUserStatus(1);
        }else {
            admin.setUserStatus(0);
        }
        adminDao.updateAdmin(admin);

        model.addAttribute("admins", adminDao.findAllAdmin());
        return "admin";
    }

    /**
     * 退出系统
     * @param session
     *          Session
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/logout")
    public String logout(HttpSession session) throws Exception{
        //清除Session
        session.invalidate();
        return "redirect:login";
    }
}
