package com.rttsoft.webserver.dao;

import java.util.Collection;

public interface IAdminMapper {
    public Collection<String> queryPermissions(String username);
}
