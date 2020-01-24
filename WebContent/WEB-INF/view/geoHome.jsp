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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Retrieve data from database in jsp</h1>
	<table border="1">
		<tr>
			<td>Thesis Subject</td>
			<td>Professor</td>
			<td>Description</td>
			
		</tr>
		<%
			try {
				connection = DriverManager.getConnection(connectionUrl + database, userid, password);
				statement = connection.createStatement();
				String sql = "select * from thesisSubjectsGeo;";
				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
		%>
		<tr>
			<td><%=resultSet.getString("subject")%></td>
			<td><%=resultSet.getString("professor")%></td>
			<td><%=resultSet.getString("description")%></td>
		</tr>
		
		
		<form action="//www.html.am/html-codes/forms/html-form-tag-action.cfm"
		target="result2" method="get">
		<p>What would you like for lunch?</p>
		<select name="fruit" multiple>
			<option value="none">Nothing</option>
			<option value="guava"><%=resultSet.getString("subject")%></option>
			<option value="lychee">Lychee</option>
			<option value="papaya">Papaya</option>
			<option value="watermelon">Watermelon</option>
		</select>
		<p>
			<input type="submit" value="Submit">
		</p>
	</form>
	<h3>Result:</h3>
	<iframe name="result2" style="height: 100px; width: 200px;"></iframe>
		
		<%
			}
				connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
	
	<script type="text/javascript">
	
	</script>
</body>
</html>


