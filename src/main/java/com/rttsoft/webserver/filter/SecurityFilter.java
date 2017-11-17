package com.rttsoft.webserver.filter;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authz.AuthorizationFilter;

public class SecurityFilter extends AuthorizationFilter{

    @Override
    protected boolean isAccessAllowed(ServletRequest req,
                                      ServletResponse res, Object mapValue) throws Exception {
        Subject sub = SecurityUtils.getSubject();

        if(!sub.isAuthenticated())
        {
           // log.warn("用户没有登陆！");
            return true;
        }
		/*
		 * 获取到uri 如果是结尾是/uuid格式，
		 * 如果提交方式为get方法
		 * 代表的restful格式，只判断次级uri就可以
		 */
        /**
         * 重写权限控制
         * @author sammy
         * @since 2015-06-26
         * 思路：加入入侵代码* 和 ？   *代表所有 ？代表一级url
         */
        HttpServletRequest request = (HttpServletRequest)req;
        String contextPath = request.getContextPath();  //获取上下文
        String uri = request.getRequestURI().trim();
        if(StringUtils.isNotEmpty(contextPath))
        {
            uri = uri.substring(contextPath.length(),uri.length());
        }
        uri += "--"+request.getMethod();
        return sub.isPermitted(uri);
    }
}
