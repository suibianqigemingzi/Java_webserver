package com.rttsoft.webserver.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Properties;

@Controller
@RequestMapping(value = "/admin/systeminfo")
public class SystemInfoController {
    @RequestMapping(value = "")
    public String init(HttpServletRequest request, HttpServletResponse response, Model modelMap){
        Properties props = System.getProperties();
        Runtime runtime = Runtime.getRuntime();
        long freeMemory = runtime.freeMemory();
        long totalMemory = runtime.totalMemory();
        long maxMemory = runtime.maxMemory();
        long usedMemory = totalMemory - freeMemory;
        long useableMemory = maxMemory - totalMemory + freeMemory;
        int div = 1000;
        double freeMemoryMB = ((double) freeMemory) / div / div;
        double totalMemoryMB = ((double) totalMemory) / div / div;
        double usedMemoryMB = ((double) usedMemory) / div / div;
        double maxMemoryMB = ((double) maxMemory) / div / div;
        double useableMemoryMB = ((double) useableMemory) / div / div;
        modelMap.addAttribute("props", props);
        modelMap.addAttribute("maxMemoryMB", maxMemoryMB);
        modelMap.addAttribute("usedMemoryMB", usedMemoryMB);
        modelMap.addAttribute("useableMemoryMB", useableMemoryMB);
        modelMap.addAttribute("totalMemoryMB", totalMemoryMB);
        modelMap.addAttribute("freeMemoryMB", freeMemoryMB);
        return "admin/systeminfo";
    }
}
