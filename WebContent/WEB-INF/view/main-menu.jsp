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


			<div align="center">


				<form action="geography">
					<button type="submit" class="btn btn-primary">Τμήμα
						Γεωγραφίας</button>
				</form>
				<p></p>
				<form action="diet">
					<button type="submit" class="btn btn-primary">Τμήμα Επιστήμης
						Διαιτολογίας και Διατροφής</button>
				</form>
				<p></p>
				<form action="econ">
					<button type="submit" class="btn btn-primary">Τμήμα Οικοιακής
						Οικονομίας και Οικολογίας</button>
				</form>
				<p></p>
				<form action="it">
					<button type="submit" class="btn btn-primary">Τμήμα
						Πληροφορικής και Τηλεματικής</button>
				</form>
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
				<input type="submit" value="Συνέχεια" />
			</form>
</body>
</sec:authorize>


<sec:authorize access="hasRole('ROLE_MASTER')">
<style type="text/css">
input[type=submit] {
	padding: 5px 15px;
	background: #ccc;
	border: 0 none;
	cursor: pointer;
	-webkit-border-radius: 5px;
	border-radius: 5px;
}
.sidenav {
  height: 100%; 
  width: 160px; 
  position: fixed;
  z-index: 1; 
  top: 3; 
  left: 0;
  background-color: #333; 
  overflow-x: hidden; 
  padding-top: 20px;
}


.sidenav a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 15px;
  color: #818181;
  display: block;
}


.sidenav a:hover {
  color: #f1f1f1;
}


.main {
  margin-left: 160px;
  padding: 0px 10px;
}


@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
<div class="sidenav">
<br>
<br>
  <a href="/Springmvc1/addStudent">Εισαγωγή Χρήστη</a>
  <a href="/Springmvc1/deleteStudent">Διαγραφή Χρήστη</a>
  <a href="/Springmvc1/updateStudent">Ανανέωση Χρήστη</a>
  <a href="/Springmvc1/deleteRole">Διαγραφή ρόλου</a>
</div>
<div align="middle">
<p><i><font size="5">Υπηρεσία Διαχείρησης Καταλόγου Χρηστών</font></i></p>
			
</sec:authorize>
</body>
</html>