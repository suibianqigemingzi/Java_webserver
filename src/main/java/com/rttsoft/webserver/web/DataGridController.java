package com.rttsoft.webserver.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

@Controller
@RequestMapping(value = "/admin/datagrid")
public class DataGridController {
    @RequestMapping(value = "")
    public String init(HttpServletRequest request, HttpServletResponse response, ModelMap map){
        return "admin/datagrid";
    }

    @RequestMapping(value = "getdata")
    @ResponseBody
    public String getdata(HttpServletRequest request, HttpServletResponse response, ModelMap map){
        String str = ReadFile("d:/objects.txt");
        return str;
    }

    public static String ReadFile(String path){
        String laststr="";
        File file=new File(path);
        BufferedReader reader=null;
        try{
            reader=new BufferedReader(new FileReader(file));
            String tempString=null;
            while((tempString=reader.readLine())!=null){
                laststr=laststr+tempString;
            }
            reader.close();
        }catch(IOException e){
            e.printStackTrace();
        }finally{
            if(reader!=null){
                try{
                    reader.close();
                }catch(IOException el){
                }  }  }
        return laststr;
    }
}
