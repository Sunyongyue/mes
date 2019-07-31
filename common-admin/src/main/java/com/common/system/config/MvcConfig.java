/*package com.common.system.config;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;
import org.thymeleaf.spring4.view.ThymeleafViewResolver;
*//**
 * Created by Mr.SunYongYue on 2019/6/27.
 * Time:14:18
 * ProjectName:Common-admin
 * 配置Thymeleaf优先级
 *//*
@Configuration
@EnableAutoConfiguration
public class MvcConfig extends WebMvcConfigurerAdapter {

    private int thymeleafTemplateResolverOrder =1;


    @Autowired
    private ThymeleafViewResolver thymeleafViewResolver;

    @Bean

    public FreeMarkerViewResolver freeMarkerViewResolver() {

        MyFreeMarkerViewResolver resolver = new MyFreeMarkerViewResolver();

        resolver.setPrefix(null);

        resolver.setSuffix(".ftl");

        resolver.setContentType("text/html; charset=UTF-8");

        resolver.setRequestContextAttribute("request");

        resolver.setExposeContextBeansAsAttributes(true);

        resolver.setExposeRequestAttributes(true);

        resolver.setExposeSessionAttributes(true);

        resolver.setOrder(1);

        return resolver;

    }*/
    /*@Bean
    public ThymeleafViewResolver thymeleafViewResolverBean(){
        MyThymeleafResolver myThymeleafResolver =new MyThymeleafResolver();
        BeanUtils.copyProperties(thymeleafViewResolver,myThymeleafResolver);
        myThymeleafResolver.setOrder(thymeleafTemplateResolverOrder);
        return myThymeleafResolver;
    }*/
/*}*/
