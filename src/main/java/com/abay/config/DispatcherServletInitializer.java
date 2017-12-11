package com.abay.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class DispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
		
    @Override
	protected Class<?>[] getRootConfigClasses(){
		return new Class[] {AppConfig.class, SecurityConfig.class};
	}
	@Override
	protected Class<?>[] getServletConfigClasses(){
		return  new Class[] {WebConfig.class};
	}
	@Override
	protected String[] getServletMappings() {
		return new String[] {"/"};
	}
	
}
