<%@ page language="java" import="java.net.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//判断用户是否选用cookie
	String[] isUseCookie = request.getParameterValues("isUseCookie");
	if(isUseCookie!=null&&isUseCookie.length>0){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Cookie usernameCookie = new Cookie("username",username);
		Cookie passwordCookie = new Cookie("password",password);
		usernameCookie.setMaxAge(604800);//设置Cookie七天后过期,单位为秒
		passwordCookie.setMaxAge(604800);//设置Cookie七天后过期,单位为秒
		response.addCookie(usernameCookie);
		response.addCookie(passwordCookie);
		
	}else{
		Cookie[] cookies = request.getCookies();
		if(cookies!=null&&cookies.length>0){
			for(Cookie c:cookies){
				if(c.getName().equals("username")||c.getName().equals("password")){
					c.setMaxAge(0);//把cookie设置为过期
					response.addCookie(c);//保存cookie使用设置生效
				}
			}
		}
	}
%>
<a href="users.jsp">查看Cookie信息</a>