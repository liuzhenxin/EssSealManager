package com.clt.sealmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("seal")
public class SealController {

    @RequestMapping(value = "/addseal", method = RequestMethod.POST)
    public String addSeal() {
        return "redirect:index";
    }

}
