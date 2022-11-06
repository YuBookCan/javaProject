<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<style>
body {
	font-family: "標楷體"
}
</style>
<title>Insert title here</title>
</head>
<body>
	<table width="600" align="center" border="1">
		<tr height="100">
			<td align="center"><jsp:include page="title.jsp"></jsp:include>
		<tr height="450">
			<td valign="center">
			<form action="confirm.jsp" method="post">
				<table width="500" align="center" border="1">
					<tr>
						<td colspan="3" align="center">
						<h3>點餐</h3>
					<tr>
						<td colspan="3" align="center">
						<select name="desk">
							<option value="A1">A1桌
							<option value="A2">A2桌
							<option value="A3">A3桌
							<option value="A4">A4桌
						</select>
					<tr>
						<td>A:<br>
						<img alt="1" src="images/dog1.jpg"><br>
						<select name="a">
						<option value="0">0
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
						<option value="6">6
						<option value="7">7
						<option value="8">8
						<option value="9">9
						</select>
						<td>B:<br>
						<img alt="2" src="images/dog4.jpg"><br>
						<select name="b">
						<option value="0">0
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
						<option value="6">6
						<option value="7">7
						<option value="8">8
						<option value="9">9
						</select>
						<td>C:<br>
						<img alt="3" src="images/dog3.jpg"><br>
						<select name="c">
						<option value="0">0
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
						<option value="6">6
						<option value="7">7
						<option value="8">8
						<option value="9">9
						</select>
					<tr>
						<td colspan="3" align="center">
						<input type="submit" value="送出">
						<a href="index.jsp">回上一頁</a>
				</table>
			</form>
		<tr height="60">
			<td align="center"><jsp:include page="footer.jsp"></jsp:include>
	</table>
</body>
</html>