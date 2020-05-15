package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.Test;
import com.common.system.service.TsetService;
import com.common.system.shiro.ShiroUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;


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
    @RequestMapping("/test7")
    @ResponseBody
    @Transactional
    public int test7(){
        int i=1;
        System.out.println(1/0);
        i++;
        return i;
    }
    public static void main(String[] args){
      /*  Random random= new Random();

        for (int j = 0; j <100 ; j++) {
            int i = random.nextInt(46)+13;
            System.out.println(i);
        }*/
     /*   SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
        Date now = new Date();
        Date afterDate = new Date(now .getTime() + 300000);

        String format = sdf.format(afterDate);*/
    }

}
