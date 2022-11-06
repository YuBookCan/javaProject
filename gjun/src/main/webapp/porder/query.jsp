<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5" import="Dao.porder.implPorder" import="Model.porder" import="java.util.List"%>
 <%
 

 /*
 1.request-->接收判斷-->null ,""
 2.有--->l=querySum
 3.null,""-->l=queryAll2
 
 */
 String Start=request.getParameter("start");
 String End=request.getParameter("end");
 List<porder> l=null;
 if(Start!=null && Start!="" && End!=null && End!="")
 {
	int S=Integer.parseInt(Start);
	int E=Integer.parseInt(End);
	
	l=new implPorder().querySum(S, E);
 }
 else
 {
	 l=new implPorder().queryAll();
 }
 %>
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
			<td><form action="query.jsp">
				<table width="500" align="center" border="1">
					<tr>
						<td align="center"><h3>訂單資料</h3>
					<tr>
						<td align="center">輸入金額: 從<input type="text" name="start"
							size="5">到<input type="text" name="end" size="5">
							<input type="submit" value="送出">
				</table>
				</form> <br>
				<table width="500" align="center" border="1">
					<tr align="center">
						<td><h4>ID</h4>
						<td><h4>桌號</h4>
						<td><h4>A餐</h4>
						<td><h4>B餐</h4>
						<td><h4>C餐</h4>
						<td><h4>總金額</h4> 
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