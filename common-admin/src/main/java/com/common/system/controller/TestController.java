package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.Test;
import com.common.system.service.TsetService;
import com.common.system.shiro.ShiroUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class TestController {
    @Autowired
    TsetService tsetService;
  /*  @RequestMapping("/test")
    public ModelAndView test(){

        ModelAndView mav =new ModelAndView("test");
        return mav;
    }*/
    @RequestMapping("/test1")
    @ResponseBody
    public String tests(Integer page,Integer limit){

        JSONObject jsonObject = tsetService.queryall(page,limit);
        String s = jsonObject.toString();
        return s;
    }
    @RequestMapping("/found")
    @ResponseBody
    public String serach(Integer found){
        JSONObject jsonObject = tsetService.queryone(found);
        String s = jsonObject.toString();
        return s;
    }
    @RequestMapping("/test")
    public ModelAndView test(@SessionAttribute ShiroUser user){
        ModelAndView mav =new ModelAndView("test");
        System.out.println(user.getUsername()+"******");
        return mav;
    }
    @RequestMapping("/test6")
    @ResponseBody
    public String test6(@SessionAttribute ShiroUser user,String name,String password,Integer id){
        System.out.println(name+password+id);

        System.out.println(user.getUsername()+"******");
        return "true";
    }

}
