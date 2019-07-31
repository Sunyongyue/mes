/*package com.common.system.config;

import org.springframework.beans.factory.annotation.Value;
import org.thymeleaf.spring4.view.ThymeleafViewResolver;
import java.io.IOException;
import java.util.Locale;


public class MyThymeleafResolver extends ThymeleafViewResolver {
    *//*@Value("${spring.thymeleaf.prefix}")*//*
    private String prefix="classpath:/templates/";
    *//*@Value("${spring.thymeleaf.suffix}")*//*
    private String suffix=".html";
    @Override
    protected org.springframework.web.servlet.View loadView(final String viewName, final Locale locale) throws Exception{
        String resourceName=prefix+viewName+suffix;
        try {
            this.getApplicationContext().getResource(resourceName).getInputStream();
        }catch (final IOException e){
            if (logger.isDebugEnabled()){
                if (logger.isTraceEnabled()){
                    logger.trace("视图名:"+resourceName+"{}不存在");
                }else {
                    logger.debug("视图名:"+resourceName+"{}不存在");
                }
            }
            return null;
        }
        return super.loadView(viewName, locale);
    }
}*/
