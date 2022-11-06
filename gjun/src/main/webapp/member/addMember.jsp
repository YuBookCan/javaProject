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
<h1 align="center">會員註冊</h1>
<hr>
<form action="../addMemberController" method="post" align="center">
<font size="5">姓名:<input type="text" name="name"></font><br>
<font size="5">帳號:<input type="text" name="username"></font><br>
<font size="5">密碼:<input type="password" name="password"></font><br>
<font size="5">地址:<input type="text" name="address"></font><br>
<font size="5">電話:<input type="text" name="phone"></font><br>
<font size="5">行動:<input type="text" name="mobile"></font><br><br>
<input type="submit" value="送出">
</form>
</body>
</html>