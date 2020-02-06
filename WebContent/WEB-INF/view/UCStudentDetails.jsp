<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<div align="center">
		<div class="ui segment">

			<h3>Εισαγωγή Χρήστη</h3>



			<h2>
				<spring:message code="lbl.page" text="Add New Student" />
			</h2>
			<br />
			<form:form method="post" modelAttribute="user">
				<table>
					<tr>
						<td><label>Είδος Χρήστη:</label> <spring:message code="role"
								text="role" /></td>
						<td>Φοιτητής Προπτυχιακού <input type="radio" name="role"
							value="ROLE_USER" /></td>
						<br>
						<td>Φοιτητής Μεταπτυχιακού <input type="radio" name="role"
							value="ROLE_USER" /></td>
						<br>
						<td>Γραμματεία <input type="radio" name="role"
							value="ROLE_ADMIN" /></td>
						<br>
						<td>Μaster <input type="radio" name="role"
							value="ROLE_MASTER" /></td>
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
								<form:option value=""
									label="--Επιλογή--" selected="true" disabled="true" />
								<form:option value="uit"
									label="Τμήμα Πληροφορικής και Τηλεματικής-Προπτυχιακό" />
									<form:option value="pit"
									label="Τμήμα Πληροφορικής και Τηλεματικής-Μεταπτυχιακό" />
								<form:option value="udiet" label="Τμήμα Διαιτολογίας-Προπτυχιακό" />
								<form:option value="pdiet" label="Τμήμα Διαιτολογίας-Μεταπτυχιακό" />
								<form:option value="uecon" label="Τμήμα Οικιακής Οικονομίας-Προπτυχιακό" />
								<form:option value="pecon" label="Τμήμα Οικιακής Οικονομίας-Μεταπτυχιακό" />
								<form:option value="ugeo" label="Τμήμα Γεωγραφίας-Προπτυχιακό" />
								<form:option value="pgeo" label="Τμήμα Γεωγραφίας-Μεταπτυχιακό" />
							</form:select>
						<td>
					<tr>

						<td><label>Όνομα</label> <spring:message code="first_name"
								text="First Name" /></td>
						<td><form:input path="firstName" /></td>
					</tr>
					<tr>

						<td><label>Επίθετο</label> <spring:message code="surname"
								text="Surname" /></td>
						<td><form:input path="surname" /></td>
					</tr>
					<tr>

						<td><label>Εξάμηνο Φοίτησης</label> <spring:message
								code="currentSemester" text="currentSemester" /></td>
						<td><form:input path="currentSemester" /></td>
					</tr>
					<tr>

						<td><label>Συνολικά Μαθήματα</label> <spring:message
								code="totalClasses" text="Total Classes" /></td>
						<td><form:input path="totalClasses" /></td>
					</tr>
					<tr>

						<td><label>Περασμένα Μαθήματα</label> <spring:message
								code="passedClasses" text="Passed Classes" /></td>
						<td><form:input path="passedClasses" /></td>
					</tr>
					<tr>

						<td><label>Χρωστούμενα Μαθήματα</label> <spring:message
								code="failedClasses" text="Failed Classes" /></td>
						<td><form:input path="failedClasses" /></td>
					</tr>
					<tr>
						<td><label>Δείκτης Προόδου</label> <spring:message
								code="progessIndicator" text="progessIndicator" /></td>
						<td><form:input path="progessIndicator" /></td>
					</tr>

					<tr>

						<td><label>Κατεύθυνση*</label> <spring:message
								code="direction" text="Direction" /></td>
						<td><form:input path="direction" /></td>
					</tr>
					<tr>

						<td><label>Πρόγραμμα*</label> <spring:message code="program"
								text="program" /></td>
						<td><form:input path="program" /></td>

					</tr>

					<tr>

						<td colspan="2"><input type="submit" value="Εισαγωγή" /></td>
					</tr>
				</table>
			</form:form>





		</div>
</body>
</html>