
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	td{
		text-align:center;
	}
</style>
<meta charset="UTF-8">
<title>登录</title>
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
	<h1 style="text-align:left;">登录</h1>
	<form name="login" action="doLogin.jsp" method="post">
		<table>
			<tr>
				<td >用户名：</td>
				<td><input type="text" name="username" value="<%=username %>"/></td>
			</tr>
			<tr>
				<td >密码：</td>
				<td><input type="password" name="password" value="<%=password %>"></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="isUseCookie" value=""  checked/>一周之内记住我</td>	
			</tr>
			<tr>
				<td><input type="submit" value="Login"/></td>
			</tr>
		</table>
	</form>
</body>
</html>