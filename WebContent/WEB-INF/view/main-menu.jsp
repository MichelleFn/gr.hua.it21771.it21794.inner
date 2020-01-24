<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>

</head>
<body>

	<sec:authorize access="hasRole('ROLE_USER')">
	
		<div align="center">
			<p>Κεντρική σελίδα δηλώσεων πτυχιακών εργασιών Χαροκοπείου Πανεπιστημίου</p>

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
				<form action="geography" method="GET">
					<input type="submit" value="Τμήμα Γεωγραφίας" />
				</form>

				<form action="diet" method="GET">
					<input type="submit"
						value="Τμήμα Επιστήμης Διαιτολογίας και Διατροφής" />
				</form>

				<form action="econ" method="GET">
					<input type="submit"
						value="Τμήμα Οικοιακής Οικονομίας και Οικολογίας" />
				</form>

				<form action="it" method="GET">
					<input type="submit" value="Τμήμα Πληροφορικής και Τηλεματικής" />
				</form>
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_USER')">
		<p>i am the USER</p>
	</sec:authorize>
	
	
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<p>i am the ADMIN</p>
		<p>Ενεργοποίηση φοιτητών για δήλωση πτυχιακής</p>

	<form action="enableUser" method="GET">
			<input type="submit" value="ENABLE" />
		</form>
	</sec:authorize>

	

	<sec:authorize access="hasRole('ROLE_MASTER')">
		<p>i am the MASTER</p>
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
	</sec:authorize>
</body>
</html>