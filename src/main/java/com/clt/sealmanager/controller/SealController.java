package com.clt.sealmanager.controller;

import com.clt.sealmanager.dao.IRegisterDao;
import com.clt.sealmanager.dao.ISealDao;
import com.clt.sealmanager.dao.impl.AdminDao;
import com.clt.sealmanager.dao.impl.RegisterDao;
import com.clt.sealmanager.dao.impl.SealDao;
import com.clt.sealmanager.model.Seal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/seal")
public class SealController {
    private ISealDao sealDao;
    private IRegisterDao registerDao;

    protected HttpServletRequest request;
    protected HttpServletResponse response;
    protected HttpSession session;

    @ModelAttribute
    public void setReqAndRes(HttpServletRequest request, HttpServletResponse response){
        this.request = request;

        this.response = response;

        this.session = request.getSession();

        sealDao = new SealDao();
        registerDao = new RegisterDao();

    }

    @RequestMapping(value = "/addseal", method = RequestMethod.POST)
    public String addSeal(@ModelAttribute("SpringWeb")Seal seal) {
        seal.setStatus("1");
        sealDao.addSeal(seal);
        return "redirect:sealList";
    }

    @RequestMapping(value = "/sealList", method = RequestMethod.POST)
    public String sealList(String sealName,ModelMap model) {
        List<Seal> seals = null;
        if("".equals(sealName) || sealName ==null){
            seals = sealDao.findAllSeal();
        } else {
            if(sealDao.findSealByName(sealName) != null){
                seals = sealDao.findSealByName(sealName);
            }
        }

        model.addAttribute("seals", seals);

        return "sealList";
    }
    @RequestMapping(value = "/remoteRegAct", method = RequestMethod.POST)
    public String remoteRegAct(ModelMap model) {

        model.addAttribute("registers", registerDao.findAllRegister());
        return "remoteRegAct";
    }
}