<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.member" %>
  <%
  	member m=(member)session.getAttribute("M");
  
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<style>
body{
	font-family:"�з���";
}
</style>
</head>
<body>
<h1 align="center"><%=m.getName() %>�w��z,�n�J���\</h1>
<a href="../porder/index.jsp"><p align="center"><font size="4">�e���I�\</font></p></a>
</body>
</html>