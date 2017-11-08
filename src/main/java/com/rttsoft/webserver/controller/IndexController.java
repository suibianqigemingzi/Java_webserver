package com.rttsoft.webserver.controller;

import com.rttsoft.webserver.service.IIndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.ResultSet;
import java.io.*;
import java.net.*;
import java.sql.*;
import java.util.*;
@Controller
@RequestMapping("/")
public class IndexController {
    @Autowired
    IIndexService indexService;
    @RequestMapping("/index")
    public String index() {
        System.out.println("index");
        int count = indexService.testDB();
        System.out.println(count);
        return "index";
    }
}
