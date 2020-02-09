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
<script type="text/javascript">

		function init() {
			document.getElementById('MyText').style.display='none';
		}   
        function onClick(){
        	document.getElementById('MyText').style.display='block';
        }
 

</script>

<meta charset="UTF-8">
<title>Τμήμα Πληροφορικής και Τηλεματικής</title>
<style>
input[type="radio"].fancy {
    opacity: 0;
    margin-right: -12px;
}

input[type="radio"].fancy + label::before {
    content: "";
    overflow: hidden;
    font-size: 10px;
    text-align: center;
    margin-right: 3px;
    display: inline-block;
    vertical-align: middle;
    border: 1px solid #333333;
    background-color: #EEEEEE;
    width: 12px;
    height: 12px;
    -moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    border-radius: 6px;
}

input[type="radio"].fancy:checked + label::before {
    content: "•";
    color: #777777;
    background-color: #FFFFFF;
}

input[type="radio"].fancy:disabled + label::before {
    background-color: #999999;
}
</style>
</head>
<body onload="init()">
<div align="center">
<p><b><font size="5">Καλώς Ήρθατε Στο Σύστημα Δηλώσεων</font></b></p> <p><b><font size="5">Πτυχιακών Εργασιών Του Προπτυχιακού Τμήματος</font></b></p>
<p>Επιλέξτε μια απο τις παρακάτω πτυχιακές εργασίες</p>
	<form:form method="POST" action="success2">
	<div>

		<table>
			<%
				try {
						connection = DriverManager.getConnection(connectionUrl + database, userid, password);
						statement = connection.createStatement();
						String sql = "select * from thesis where department='ugeo' ;";
						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
			%>
			<tr>

				<input type="radio" id="id"
						name="<%=resultSet.getString("subject")%>"
						value="<%=resultSet.getString("subject")%>" onclick="onClick()">
					<%=resultSet.getString("subject")%><br>
					<div id="MyText"><%=resultSet.getString("description")%></div>
				

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
		</div>
	</form:form>
</body>

</html>