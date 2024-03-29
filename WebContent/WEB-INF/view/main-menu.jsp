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
			<p></p>
			<p>
				<b> <font size="4"> Κεντρική Σελίδα Δηλώσεων </b> </font>
			</p>
			<p>
				<b> <font size="4"> Προπτυχιακών Πτυχιακών Εργασιών
						Χαροκοπείου Πανεπιστημίου </b> </font>
			</p>

	</sec:authorize>



	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<div align="center">

			<p>
				<b><font size="6">Ενεργοποίηση φοιτητών για δήλωση
						πτυχιακής</font></b>
			</p>
			<p>Οι φοιτητές που θα ενεργοποιηθουν θα έχουν την δυνατότητα να
				δηλώσουν πτυχιακή έργασία με βάση</p>
			<ul>
				<li>Τον αρθιμό των χρωστούμενων μαθημάτων</li>
				<li>Το τρέχων εξάμηνο στο οποίο βρίσκονται</li>

			</ul>
			<p>ΓΙα ενεργοποίηση πατήστε "Συνέχεια"</p>
			<form action="enable" method="GET">
				<button type="submit" class="myButton"/>Συνέχεια</button>
			</form>
</body>
</sec:authorize>


<sec:authorize access="hasRole('ROLE_MASTER')">

	<div class="sidenav">
		<a href="/Springmvc1/addStudent">Εισαγωγή
			Χρήστη</a> <a href="/Springmvc1/deleteStudent">Διαγραφή Χρήστη</a> <a
			href="/Springmvc1/updateStudent">Ανανέωση Χρήστη</a> 
			
	</div>
	<div align="middle">
		<p>
			<i><font size="5">Υπηρεσία Διαχείρησης Καταλόγου Χρηστών</font></i>
		</p>
		
</sec:authorize>
</body>
</html>