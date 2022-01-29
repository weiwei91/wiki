package com.wei.wiki.service;


import com.wei.wiki.domain.Test;
import com.wei.wiki.mapper.TestMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DemoService {
    @Resource
    TestMapper testMapper;
    public List<Test> list(){
        return testMapper.selectByExample(null);
    }

}
