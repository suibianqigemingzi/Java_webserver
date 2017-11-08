package com.rttsoft.webserver.service.impl;

import com.rttsoft.webserver.dao.IIndexMapper;
import com.rttsoft.webserver.service.IIndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IndexServiceImpl  implements IIndexService {
    @Autowired
    IIndexMapper mapper;
    public int testDB() {
        return mapper.getCount2();
    }
}
