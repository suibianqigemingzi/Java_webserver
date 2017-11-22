package com.rttsoft.webserver.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
@Controller
@RequestMapping(value = "")
public class IndexController {
    public static final Logger logger = Logger.getLogger(IndexController.class);
    public static final Logger loggerRecord = Logger.getLogger("RECORD");
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
