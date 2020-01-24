<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>

</head>
<body>

	<div align="center">
		<p>Κατάλογος Χρηστών</p>

		<div align="center">

			<style type="text/css">
input[type=submit] {
	padding: 5px 15px;
	background: #ccc;
	border: 0 none;
	cursor: pointer;
	-webkit-border-radius: 5px;
	border-radius: 5px;
}
</style>
			<form action="addStudent" method="GET">
				<input type="submit" value="Εισαγωγή Χρήστη" />
			</form>

			<form action="deleteStudent" method="GET">
				<input type="submit"
					value="Διαγραφή Χρήστη" />
			</form>

			<form action="updateStudent" method="GET">
				<input type="submit"
					value="Ανανέωση Χρήστη" />
			</form>

			<form action="addRole" method="GET">
				<input type="submit" value="Εισαγωγή Ρόλου" />
			</form>
			<form action="deleteRole" method="GET">
				<input type="submit" value="Διαγραφή Ρόλου" />
			</form>
			<!--<form action="addAction" method="GET">
				<input type="submit" value="Εισαγωγή ενέργείας" />
			</form>-->
			<!-- <form action="deleteRole" method="GET">
				<input type="submit" value="Διαγραφή ενέργειας" />
			</form> -->
			
			
			
</body>
</html>