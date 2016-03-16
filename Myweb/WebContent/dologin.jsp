<%@ page language="java" contentType="text/html; charset=utf-8"%>
<jsp:useBean id="loginUser" class="com.po.Users" scope="page"/>
<jsp:useBean id="userDAO" class="com.dao.UsersDAO" scope="page"/>
<jsp:setProperty name="loginUser" property="*" />

<%
	
	request.setCharacterEncoding("utf-8");//防止中文乱码

	//String user = request.getParameter("username");
	//String psw = request.getParameter("password");
	//out.print(user);
	//out.print(psw);
	if(userDAO.usersLogin(loginUser)){
		//request.getRequestDispatcher("index.jsp").forward(request, response);
		session.setAttribute("username", loginUser.getUsername());
		response.sendRedirect("index.jsp?act=success");
	}else{
		response.sendRedirect("login_fail.jsp");
	}
%>