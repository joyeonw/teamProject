//package com.board.config;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
//
//import com.board.interceptor.LoginCheckInterceptor;
//
//@Configuration
//public class WebMvcConfig  implements   WebMvcConfigurer   {

//	 중요  폴더 위치  : WebMvcConfig.java
//	   main() 함수가 있는 클래스(Board5Application.java)의
//	   패키지 (com.board) 아래에 .config 을 생성해서 저장
//	   com.board.config 
//	 용도 : Spring legacy project 는 설정을 .xml 에 저장 
//	        SpringBoot Project 는 설정을 WebMvcConfig.java 에 저장
//	
//	 각종 설정정보를 저장하는 곳
	
//	@Autowired
//	private  LoginCheckInterceptor   loginCheckInterceptor;
	
//    @Override
//    public void addInterceptors(InterceptorRegistry registry) {
//
//    	System.out.println("okokok");
//        registry.addInterceptor( loginCheckInterceptor )
//                .addPathPatterns("/**")      // http://localhost:9090/
//                .addPathPatterns("/**/*")    
//                .excludePathPatterns("/log*","/css/**", "/img/**", "/js/**");
//        
//    }
	
//}
