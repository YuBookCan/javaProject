<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5" import="Model.porder"%>
<%
porder p = (porder) session.getAttribute("P");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<SCRIPT LANGUAGE="JavaScript">

<!-- This script and many more are available free online at -->
<!-- The JavaScript Source!! http://javascript.internet.com -->

<!-- Begin
function varitext(text){
text=document
print(text)
}
//  End -->
</script>
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
			<td>
				<table width="450" align="center" border="1">
					<tr>
						<td colspan="2" align="center"><h3>感謝您~這是您的訂購細目~</h3>
					<tr>
						<td width="80" align="center"><h4>桌號</h4>
						<td align="center"><h4><%=p.getDesk()%></h4>
					<tr>
						<td width="80" align="center"><h4>A餐</h4>
						<td align="center"><h4><%=p.getA()%></h4>
					<tr>
						<td width="80" align="center"><h4>B餐</h4>
						<td align="center"><h4><%=p.getB()%></h4>
					<tr>
						<td width="80" align="center"><h4>C餐</h4>
						<td align="center"><h4><%=p.getC()%></h4>
					<tr>
						<td width="80" align="center"><h4>總金額</h4>
						<td align="center"><h4><%=p.getSum()%>元
							</h4>
					<tr>
						<td colspan="2" align="center"><a href="index.jsp">回首頁</a>
							<DIV ALIGN="CENTER">
								<FORM>
									<INPUT NAME="print" TYPE="button" VALUE="列印此頁"
										ONCLICK="varitext()">
								</FORM>
							</DIV>
				</table>
		<tr height="60">
			<td align="center"><jsp:include page="footer.jsp"></jsp:include>
	</table>
</body>
</html>