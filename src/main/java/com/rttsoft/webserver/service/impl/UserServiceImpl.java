package com.rttsoft.webserver.service.impl;

import com.rttsoft.webserver.model.User;
import com.rttsoft.webserver.service.IUserService;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {
    public User findUserByUsername(String username) {
        User user = new User();
        user.setUsername(username);
        return user;
    }
}
