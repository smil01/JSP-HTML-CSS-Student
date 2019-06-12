package com.front;

import javax.servlet.http.HttpServletRequest;

public class CommandUtil {
	public static String getCommand(HttpServletRequest request) {
		String requestURI = request.getRequestURI();
//		System.out.println(requestURI);// /MessageSystem/Login.do

		String contextPath = request.getContextPath();
//		System.out.println(contextPath);// /MessageSystem

		String command = requestURI.substring(contextPath.length() + 1);
//		System.out.println(command);// Login.do

		return command;
	}
}
