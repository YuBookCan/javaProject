<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5" import="Dao.porder.implPorder" import="Model.porder" import="java.util.List"%>
<%
List<porder> l=new implPorder().queryAll();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<style>
body {
	font-family: "�з���"
}
</style>
<title>Insert title here</title>
</head>
<body>
	<table width="600" align="center" border="1">
		<tr height="100">
			<td align="center"><jsp:include page="title.jsp"></jsp:include>
		<tr height="450">
			<td><form action="../updatePorderController" method="post">
				<table width="500" align="center" border="1">
					<tr>
						<td align="center"><h3>�ק�q����</h3>
					<tr>
						<td align="center">ID:<input type="text" name="id"
							size="3">
							�ู:<select name="desk">
								<option value="A1">A1
								<option value="A2">A2
								<option value="A3">A3
								<option value="A4">A4
							</select>
							A�\:<input type="text" name="a" size="3">
							B�\:<input type="text" name="b" size="3">
							C�\:<input type="text" name="c" size="3">
		
							<input type="submit" value="�e�X">
				</table>
				</form> <br>
				<table width="500" align="center" border="1">
					<tr align="center">
						<td><h4>ID</h4>
						<td><h4>�ู</h4>
						<td><h4>A�\</h4>
						<td><h4>B�\</h4>
						<td><h4>C�\</h4>
						<td><h4>�`���B</h4> 
						<%
							for (porder p:l){
								out.println("<tr align='center'><td>"+p.getId()
								+"<td>"+p.getDesk()
								+"<td>"+p.getA()
								+"<td>"+p.getB()
								+"<td>"+p.getC()
								+"<td>"+p.getSum());
							}
						%>
				</table>
		<tr height="60">
			<td align="center"><jsp:include page="footer.jsp"></jsp:include>
	</table>
</body>
</html>