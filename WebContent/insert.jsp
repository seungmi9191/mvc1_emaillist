<%@page import="java.util.List"%>
<%@page import="com.javaex.dao.EmaillistDao"%>
<%@page import="com.javaex.vo.EmailVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<% 
	request.setCharacterEncoding("UTF-8");
	String lastName = request.getParameter("ln");
	String firstName = request.getParameter("fn");
	String email = request.getParameter("email");
	
	System.out.println(lastName+"/"+firstName+"/"+email);
	
	EmailVO vo = new EmailVO(lastName, firstName, email);
	EmaillistDao dao = new EmaillistDao();
	dao.insert(vo);
	
	response.sendRedirect("list.jsp"); 

	
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>