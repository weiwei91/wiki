package com.wei.wiki.controller;

import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * @Description:
 * @Auther: weiwei
 * @Date: 2022/01/28/20:28
 */
@RestController
public class TestController {

    @GetMapping("/hello")
    public String hello(){
        return "hello";
    }

    @PostMapping("/hello/post")
    public String hellopost(@RequestParam Map<String,String> params){
        return "hello post:"+params.get("name");
    }
}
