<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5" import="Model.porder" import="Model.member"%>
<%
request.setCharacterEncoding("big5");

String Desk = request.getParameter("desk");
int A = Integer.parseInt(request.getParameter("a"));
int B = Integer.parseInt(request.getParameter("b"));
int C = Integer.parseInt(request.getParameter("c"));
porder p = new porder(Desk, A, B, C);

session.setAttribute("P", p);

member m=(member)session.getAttribute("M");

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
			<td>
				<table width="450" align="center" border="1">
					<tr>
						<td colspan="2" align="center"><h3><%=m.getName() %>�o�O�z���q�ʲӥ�</h3>
					<tr>
						<td width="80" align="center"><h4>�ู</h4>
						<td align="center"><h4><%=p.getDesk()%></h4>
					<tr>
						<td width="80" align="center"><h4>A�\</h4>
						<td align="center"><h4><%=p.getA()%></h4>
					<tr>
						<td width="80" align="center"><h4>B�\</h4>
						<td align="center"><h4><%=p.getB()%></h4>
					<tr>
						<td width="80" align="center"><h4>C�\</h4>
						<td align="center"><h4><%=p.getC()%></h4>
					<tr>
						<td width="80" align="center"><h4>�`���B</h4>
						<td align="center"><h4><%=p.getSum()%>��
							</h4>
					<tr>
						<td colspan="2" align="center"><a href="../addOrderController">�T�w</a>
							,<a href="addOrder.jsp">���s�q��</a>
				</table>
		<tr height="60">
			<td align="center"><jsp:include page="footer.jsp"></jsp:include>
	</table>
</body>
</html>