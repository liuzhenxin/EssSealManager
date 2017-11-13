package com.clt.sealmanager.controller;

import com.clt.sealmanager.dao.IAdminDao;
import com.clt.sealmanager.dao.impl.AdminDao;
import com.clt.sealmanager.model.AdminList;
import com.mysql.jdbc.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.clt.sealmanager.model.Admin;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
//@RequestMapping("test")
public class LoginController {

    private IAdminDao adminDao;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String redirect() {
        return "redirect:index";
    }
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
//        return new ModelAndView("index", "command", new Admin());
        return "index";
    }
    //登录
    @RequestMapping(value="/login", method = RequestMethod.POST)
    public String login(@ModelAttribute("SpringWeb")Admin admin,
                             ModelMap model,HttpSession session) {

        adminDao = new AdminDao();
        Admin login_admin = adminDao.findAdminById(admin.getUserId());
        if(admin.getUserPwd().equals(login_admin.getUserPwd())){
            session.setAttribute("userId", admin.getUserId());
        }else{
            return "error";
        }
        model.addAttribute("userName", login_admin.getUserName());
        model.addAttribute("userId", login_admin.getUserId());
        return "index2";
    }

    //登录
    @RequestMapping(value="/admin_list", method = RequestMethod.GET)
    public String Admin(ModelMap model) {
        adminDao = new AdminDao();

        AdminList admins = new AdminList();

//        admins.setAdmins(adminDao.findAllAdmin());

        model.addAttribute("admins", admins.getAdmins());
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
