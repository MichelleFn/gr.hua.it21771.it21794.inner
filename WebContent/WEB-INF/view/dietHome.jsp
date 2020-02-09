<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!--this is tempory-->
<%
	String id = request.getParameter("userid");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://remotemysql.com:3306/";
	String database = "4aW5L5SmF2";
	String userid = "4aW5L5SmF2";
	String password = "sq4txyrQSt";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
<script src="<c:url value="/resources/js/Geothesis.js" />"></script>
<script type="text/javascript">

		function init() {
			document.getElementById(id1).style.display='none';
		}   
        function onClick(){
        	document.getElementById(id1)).style.display='block';
        }
 

</script>
<meta charset="UTF-8">
<title>Τμήμα Πληροφορικής και Τηλεματικής</title>
</head>
<style>

position :absolute;
left:80px;
top:20px;
</style>
<body onload="init()">
	<div align="center">
		<p>
			<b><font size="5">Καλώς Ήρθατε Στο Σύστημα Δηλώσεων</font></b>
		</p>
		<p>
			<b><font size="5">Πτυχιακών Εργασιών Του Προπτυχιακού
					Τμήματος</font></b>
		</p>
		<p>Επιλέξτε μια απο τις παρακάτω πτυχιακές εργασίες</p>


		<form:form method="POST" action="dietHome">
			<p></p>
o			<p></p>
			<p></p>
			<p></p>

			<table align="center">
				<%
					try {
							connection = DriverManager.getConnection(connectionUrl + database, userid, password);
							statement = connection.createStatement();
							String sql = "select * from thesis where department='udiet' ;";
							int id1=1;
							resultSet = statement.executeQuery(sql);
							while (resultSet.next()) {
				%>


				<tr>

					<input type="radio" id="id"
						name="<%=resultSet.getString("subject")%>"
						value="<%=resultSet.getString("subject")%>" onclick="onClick()">
					<%=resultSet.getString("subject")%><br>
					
					<div id="<%=id1%>"><%=resultSet.getString("description")%></div>

				</tr>
				<%id1=id1+1; %>

				<%
					}
							connection.close();
						} catch (Exception e) {
							e.printStackTrace();
						}
				%>
				<tr>
					<td colspan="3"><button class="myButton" type="submit" />Υποβολή
						</button></td>
				</tr>
			</table>

		</form:form>
</body>

</html>