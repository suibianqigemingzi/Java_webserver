package com.rttsoft.webserver.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "")
public class IndexController {
    @RequestMapping(value = "")
    public String init(HttpServletRequest request, HttpServletResponse response, ModelMap map){
        return "index";
    }

    @RequestMapping(value = "login")
    public String login(HttpServletRequest request, HttpServletResponse response, ModelMap map){
        return "login";
    }
    @RequestMapping(value = "test")
    public String test(HttpServletRequest request, HttpServletResponse response, ModelMap map){
        return "test";
    }
}
