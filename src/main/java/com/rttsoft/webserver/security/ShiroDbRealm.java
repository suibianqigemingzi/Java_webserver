package com.rttsoft.webserver.security;

import com.rttsoft.webserver.dao.IAdminMapper;
import org.apache.log4j.Logger;
import org.apache.shiro.realm.jdbc.JdbcRealm;
import org.springframework.beans.factory.annotation.Autowired;

public class ShiroDbRealm extends JdbcRealm {

    private static final Logger log = Logger.getLogger(ShiroDbRealm.class);

}
