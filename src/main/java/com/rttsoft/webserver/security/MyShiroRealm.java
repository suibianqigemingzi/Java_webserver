package com.rttsoft.webserver.security;

import com.rttsoft.webserver.dao.IAdminMapper;
import com.rttsoft.webserver.model.Permission;
import com.rttsoft.webserver.model.Role;
import com.rttsoft.webserver.model.User;
import com.rttsoft.webserver.service.IUserService;
import com.rttsoft.webserver.service.impl.UserServiceImpl;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.*;

public class MyShiroRealm extends AuthorizingRealm {
// 用于获取用户信息及用户权限信息的业务接口
@Autowired
private IUserService userService;
    // 获取授权信息
protected AuthorizationInfo doGetAuthorizationInfo(
    PrincipalCollection principals) {
    String username = (String) principals.getPrimaryPrincipal();

    Set<Role> roleSet =  userService.findUserByUsername(username).getRoleSet();
    //角色名的集合
    Set<String> roles = new HashSet<String>();
    //权限名的集合
    Set<String> permissions = new HashSet<String>();

    Iterator<Role> it = roleSet.iterator();
    while(it.hasNext()){
        roles.add(it.next().getName());
        for(Permission per:it.next().getPermissionSet()){
            permissions.add(per.getName());
        }
    }
    SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();

    authorizationInfo.addRoles(roles);
    authorizationInfo.addStringPermissions(permissions);


    return authorizationInfo;
}
// 获取认证信息
    protected AuthenticationInfo doGetAuthenticationInfo(
        AuthenticationToken authcToken ) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken)authcToken;
        AuthenticationInfo authcInfo = new SimpleAuthenticationInfo(token.getUsername(), token.getPassword(),"test");
        // User user = userService.findUserByUsername(username);
//        User user = new User();
//        user.setUsername(username);
//        user.setPassword("123456");
//        String temp = getName();
//        if(user==null){
//            //木有找到用户
//            throw new UnknownAccountException("没有找到该账号");
//        }
//        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user.getUsername(), user.getPassword(),getName());
        return authcInfo;
    }
}