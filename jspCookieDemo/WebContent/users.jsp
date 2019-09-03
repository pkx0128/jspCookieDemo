<%@ page language="java" import="java.net.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查看cookie信息</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");
	String username = null;
	String password = null;
	Cookie[] cookies = request.getCookies();
	if(cookies!=null&&cookies.length>0){
		for(Cookie c:cookies){
			if(c.getName().equals("username")){
				username = c.getValue();
			}
			if(c.getName().equals("password")){
				password = c.getValue();
			}
		}
	}

%>
用户名：<%=username %><br/>
密码：<%=password %>

</body>
</html>
