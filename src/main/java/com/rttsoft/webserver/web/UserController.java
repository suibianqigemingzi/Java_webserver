package com.rttsoft.webserver.web;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/admin/user")
public class UserController {
    public static final Logger logger = Logger.getLogger(UserController.class);
    public static final Logger loggerRecord = Logger.getLogger("RECORD");
    @RequestMapping(value = "")
    public String init(HttpServletRequest request, HttpServletResponse response, ModelMap map){
        logger.error("test");
        loggerRecord.info("init");
        return "admin/user";
    }
}
