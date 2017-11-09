package com.rttsoft.webserver.service;

import com.rttsoft.webserver.model.User;

public interface IUserService {
    User findUserByUsername(String username);
}
