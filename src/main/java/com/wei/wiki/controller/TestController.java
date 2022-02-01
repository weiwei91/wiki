package com.wei.wiki.controller;

import com.wei.wiki.service.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * @Description:
 * @Auther: weiwei
 * @Date: 2022/01/28/20:28
 */
@RestController
public class TestController {

    @Autowired
    private DemoService demoService;

    @GetMapping("/hello")
    public String hello(){
        return "hello3";
    }

    @GetMapping("/demo")
    public Object demo(){
       return demoService.list();
    }

    @PostMapping("/hello/post")
    public String hellopost(@RequestParam Map<String,String> params){
        return "hello post:"+params.get("name1");
    }
}
