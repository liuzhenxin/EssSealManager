package com.clt.sealmanager.controller;

import com.clt.sealmanager.dao.ISealDao;
import com.clt.sealmanager.dao.impl.SealDao;
import com.clt.sealmanager.model.Seal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/seal")
public class SealController {
    private ISealDao sealDao;
    @RequestMapping(value = "/addseal", method = RequestMethod.POST)
    public String addSeal(@ModelAttribute("SpringWeb")Seal seal) {
        sealDao = new SealDao();
        seal.setStatus("1");
        sealDao.addSeal(seal);
        return "redirect:index";
    }

}
