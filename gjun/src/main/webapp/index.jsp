<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<style>
body{
	font-family:"標楷體";
}
</style>
</head>
<body>
<h1 align="center">會員登入</h1>
<hr>
<form action="loginController" method="post" align="center">
<font size="5">帳號:<input type="text" name="username"></font><br>
<font size="5">密碼:<input type="password" name="password"></font><br><br>
<input type="submit" value="送出">
</form>
</body>
</html>