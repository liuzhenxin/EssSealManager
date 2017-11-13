package com.clt.sealmanager.controller;

import com.clt.sealmanager.dao.IAdminDao;
import com.clt.sealmanager.dao.impl.AdminDao;
import com.clt.sealmanager.model.AdminList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.clt.sealmanager.model.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

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
        adminDao = new AdminDao();
        Admin login_admin = adminDao.findAdminById(admin.getUserId());

        if(admin.getUserPwd().equals(login_admin.getUserPwd())){
            session.setAttribute("userId", admin.getUserId());
        }else{
            return "error";
        }
//        model.addAttribute("userName", login_admin.getUserName());
//        model.addAttribute("userId", login_admin.getUserId());
        return "index2";
    }

    //登录
    @RequestMapping(value="/admin_list", method = RequestMethod.GET)
    public String AdminList(ModelMap model) {
        adminDao = new AdminDao();

        AdminList admins = new AdminList();

        admins.setAdmins(adminDao.findAllAdmin());

        model.addAttribute("admins", admins.getAdmins());
        return "admin";
    }

    @RequestMapping(value="/admin_add", method = RequestMethod.POST)
    public String addAdmin(@ModelAttribute("SpringWeb")Admin admin) {
        adminDao = new AdminDao();
        admin.setUserStatus(1);
        adminDao.addAdmin(admin);
        return "redirect:admin_list";
    }
    @RequestMapping(value="/ajax", method = RequestMethod.POST)
    public String ajax(Admin admin){
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw = null;
        //方法处理,最后返回一个字符窜，来判断是成功还是失败了

        try {
            pw = response.getWriter();
            pw.print("1");
        } catch (IOException e) {
            //错误处理
        }finally{
            pw.close();
        }
        return null;
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
