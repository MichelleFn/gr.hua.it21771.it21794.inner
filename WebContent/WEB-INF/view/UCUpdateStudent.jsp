<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<head>

<script type="text/javascript">
<!-- These methods disable some form fields based of the type of user that is being inserted into user catalogue--> 
	function DisableTextBoxUnder() {
		var under = document.getElementById("under");
		var firstName = document.getElementById("firstName");
		
		var surname = document.getElementById("surname");
		var currentSemester = document.getElementById("currentSemester");
		var totalClasses = document.getElementById("totalClasses");
		var passedClasses = document.getElementById("passedClasses");
		var failedClasses = document.getElementById("failedClasses");
		var progessIndicator = document.getElementById("progessIndicator");
		var program = document.getElementById("program");
		var direction = document.getElementById("direction");
		firstName.disabled = under.checked ? false : true;
		surname.disabled = under.checked ? false : true;
		currentSemester.disabled = under.checked ? false : true;
		totalClasses.disabled = under.checked ? false : true;
		passedClasses.disabled = under.checked ? false : true;
		failedClasses.disabled = under.checked ? false : true;
		progessIndicator.disabled = under.checked ? false : true;
		program.disabled = under.checked ? true : false;
		direction.disabled = under.checked ? true : false;

	}

	function DisableTextBoxAdmin() {
		var admin = document.getElementById("admin");
		var firstName = document.getElementById("firstName");
		var surname = document.getElementById("surname");
		var currentSemester = document.getElementById("currentSemester");
		var totalClasses = document.getElementById("totalClasses");
		var passedClasses = document.getElementById("passedClasses");
		var failedClasses = document.getElementById("failedClasses");
		var progessIndicator = document.getElementById("progessIndicator");
		var program = document.getElementById("program");
		var direction = document.getElementById("direction");
		firstName.disabled = admin.checked ? true : false;
		surname.disabled = admin.checked ? true : false;
		currentSemester.disabled = admin.checked ? true : false;
		totalClasses.disabled = admin.checked ? true : false;
		passedClasses.disabled = admin.checked ? true : false;
		failedClasses.disabled = admin.checked ? true : false;
		progessIndicator.disabled = admin.checked ? true : false;
		program.disabled = admin.checked ? true : false;
		direction.disabled = admin.checked ? true : false;

	}
	function EnableTextBox() {
		var admin = document.getElementById("master");
		var firstName = document.getElementById("firstName");
		var surname = document.getElementById("surname");
		var currentSemester = document.getElementById("currentSemester");
		var totalClasses = document.getElementById("totalClasses");
		var passedClasses = document.getElementById("passedClasses");
		var failedClasses = document.getElementById("failedClasses");
		var progessIndicator = document.getElementById("progessIndicator");
		var program = document.getElementById("program");
		var direction = document.getElementById("direction");
		firstName.disabled = master.checked ? true : false;
		surname.disabled = master.checked ? true : false;
		currentSemester.disabled = master.checked ? true : false;
		totalClasses.disabled = master.checked ? true : false;
		passedClasses.disabled = master.checked ? true : false;
		failedClasses.disabled = master.checked ? true : false;
		progessIndicator.disabled = master.checked ? true : false;
		program.disabled = master.checked ? true : false;
		direction.disabled = master.checked ? true : false;

	}
	function DisableTextBoxMaster() {
		var admin = document.getElementById("master");
		var firstName = document.getElementById("firstName");
		var surname = document.getElementById("surname");
		var currentSemester = document.getElementById("currentSemester");
		var totalClasses = document.getElementById("totalClasses");
		var passedClasses = document.getElementById("passedClasses");
		var failedClasses = document.getElementById("failedClasses");
		var progessIndicator = document.getElementById("progessIndicator");
		var program = document.getElementById("program");
		var direction = document.getElementById("direction");
		firstName.disabled = master.checked ? true : false;
		surname.disabled = master.checked ? true : false;
		currentSemester.disabled = master.checked ? true : false;
		totalClasses.disabled = master.checked ? true : false;
		passedClasses.disabled = master.checked ? true : false;
		failedClasses.disabled = master.checked ? true : false;
		progessIndicator.disabled = master.checked ? true : false;
		program.disabled = master.checked ? true : false;
		direction.disabled = master.checked ? true : false;

	}
</script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<div align="center">
		<div class="ui segment">
			<br>
			<h3>Ανανέωση Χρήστη</h3>


			
			<h2>
				<spring:message code="lbl.page" text="Add New Student" />
			</h2>
			<br />
			<form:form method="post" modelAttribute="user">
				<table id="myTable">
					<tr>

						<td><label>Είδος Χρήστη:</label> <spring:message code="role"
								text="role" /></td>

						<td><label for="under"> Φοιτητής Προπτυχιακού <input
								type="radio" id="under" name="role" value="ROLE_USER"
								onclick="DisableTextBoxUnder()" />
						</label></td>
						<br>

						<td>Φοιτητής Μεταπτυχιακού <input type="radio" id="post"
							name="role" value="ROLE_USER" onclick="EnableTextBox()" /></td>
						<br>
						<td>Γραμματεία <input type="radio" name="role" id="admin"
							value="ROLE_ADMIN" onclick="DisableTextBoxAdmin()" /></td>
						<br>
						<td>Μaster <input type="radio" name="role" id="master"
							value="ROLE_MASTER" onclick="DisableTextBoxMaster()" /></td>
						<br>

					</tr>


					<tr>


						<td><label>Όνομα Χρήστη</label> <spring:message
								code="username" text="username" /></td>
						<td><form:input path="username" /></td>

					</tr>
					<tr>

						<td><label>Κωδικός</label> <spring:message code="password"
								text="password" /></td>
						<td><form:input path="password" /></td>
					</tr>
					<tr>
						<td><label>Τμήμα</label> <spring:message code="department"
								text="department" /></td>


						<td><form:select path="department">
								<form:option value="" label="--Επιλογή--" selected="true"
									disabled="true" />
								<form:option value="uit"
									label="Τμήμα Πληροφορικής και Τηλεματικής-Προπτυχιακό" />
								<form:option value="pit"
									label="Τμήμα Πληροφορικής και Τηλεματικής-Μεταπτυχιακό" />
								<form:option value="udiet"
									label="Τμήμα Διαιτολογίας-Προπτυχιακό" />
								<form:option value="pdiet"
									label="Τμήμα Διαιτολογίας-Μεταπτυχιακό" />
								<form:option value="uecon"
									label="Τμήμα Οικιακής Οικονομίας-Προπτυχιακό" />
								<form:option value="pecon"
									label="Τμήμα Οικιακής Οικονομίας-Μεταπτυχιακό" />
								<form:option value="ugeo" label="Τμήμα Γεωγραφίας-Προπτυχιακό" />
								<form:option value="pgeo" label="Τμήμα Γεωγραφίας-Μεταπτυχιακό" />
							</form:select>
						<td>
					<tr>

						<td><label>Όνομα</label> <spring:message code="first_name"
								text="First Name" /></td>
						<td><form:input path="firstName" id="firstName"
								disabled="disabled" required="true" /></td>
					</tr>
					<tr>

						<td><label>Επίθετο</label> <spring:message code="surname"
								text="Surname" /></td>
						<td><form:input path="surname" id="surname"
								disabled="disabled" required="true" /></td>
					</tr>
					<tr>

						<td><label>Εξάμηνο Φοίτησης</label> <spring:message
								code="currentSemester" text="currentSemester" /></td>
						<td><form:input path="currentSemester" id="currentSemester"
								disabled="disabled" required="true" /></td>
					</tr>
					<tr>

						<td><label>Συνολικά Μαθήματα</label> <spring:message
								code="totalClasses" text="Total Classes" /></td>
						<td><form:input path="totalClasses" id="totalClasses"
								disabled="disabled" /></td>
					</tr>
					<tr>

						<td><label>Περασμένα Μαθήματα</label> <spring:message
								code="passedClasses" text="Passed Classes" /></td>
						<td><form:input path="passedClasses" id="passedClasses"
								disabled="disabled" /></td>
					</tr>
					<tr>

						<td><label>Χρωστούμενα Μαθήματα</label> <spring:message
								code="failedClasses" text="Failed Classes" /></td>
						<td><form:input path="failedClasses" id="failedClasses"
								disabled="disabled" /></td>
					</tr>
					<tr>
						<td><label>Δείκτης Προόδου</label> <spring:message
								code="progessIndicator" text="progessIndicator" /></td>
						<td><form:input path="progessIndicator" id="progessIndicator"
								disabled="disabled" /></td>
					</tr>

					<tr>

						<td><label>Κατεύθυνση*</label> <spring:message
								code="direction" text="Direction" /></td>
						<td><form:input path="direction" id="direction"
								disabled="disabled" required="true" /></td>
					</tr>
					<tr>

						<td><label>Πρόγραμμα*</label> <spring:message code="program"
								text="program" /></td>
						<td><form:input path="program" id="program"
								disabled="disabled" required="true" /></td>

					</tr>

					<tr>

						<td colspan="4"><button class="myButton" type="submit"
								onclick="myFunction()">Εισαγωγή</button></td>

					</tr>
				</table>
			</form:form>

		</div>
</body>
</html>