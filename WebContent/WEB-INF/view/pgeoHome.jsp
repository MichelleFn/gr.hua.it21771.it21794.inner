<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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

<script>
function myFunction() {
  alert("Hello! I am an alert box!");
}
</script>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<div align="center">
<p><b><font size="5">Καλώς Ήρθατε Στο Σύστημα Δηλώσεων</font></b></p> <p><b><font size="5">Πτυχιακών Εργασιών Του Μεταπτυχιακού Τμήματος</font></b></p>
<p>Επιλέξτε μια απο τις παρακάτω πτυχιακές εργασίες</p>
	<form:form method="POST" action="pgeography">
	
		<table>
			<%
			try {
				connection = DriverManager.getConnection(connectionUrl + database, userid, password);
				statement = connection.createStatement();
				String sql = "select * from thesis where department='pgeo' ;";
				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
		%>
			<tr>
				
				<input type="radio" name="subject" value="<%=resultSet.getString("subject")%>"> <%=resultSet.getString("subject")%><br>
					
			</tr>
			
			<%
			}
				connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		    %>
			<tr>
				<td colspan="3"><button class="myButton" type="submit" />Υποβολή</button></td>
				

			</tr>
		</table>
	</form:form>
</body>

</html>