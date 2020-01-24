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

	<div class="ui segment">

		<h3>Add a Student</h3>

		<h2>
			<spring:message code="lbl.page" text="Add New Student" />
		</h2>
		<br />
		<form:form method="post" modelAttribute="user">
			<table>
				<tr>
					<label>Username</label>
					<td><spring:message code="username" text="username" /></td>
					<td><form:input path="username" /></td>
				</tr>
				<tr>
					<label>Password</label>
					<td><spring:message code="password" text="password" /></td>
					<td><form:input path="password" /></td>
				</tr>
				<tr>
					<label>department</label>
					<td><spring:message code="department" text="department" /></td>
					<td><form:input path="department" /></td>
				</tr>
				<tr>
					<label>First Name</label>
					<td><spring:message code="firstName" text="First Name" /></td>
					<td><form:input path="firstName" /></td>
				</tr>
				<tr>
					<label>Surname</label>
					<td><spring:message code="surname" text="Surname" /></td>
					<td><form:input path="surname" /></td>
				</tr>
				<tr>
					<label>Current Semester</label>
					<td><spring:message code="currentSemester"
							text="currentSemester" /></td>
					<td><form:input path="currentSemester" /></td>
				</tr>
				<tr>
					<label>Total Classes</label>
					<td><spring:message code="totalClasses" text="Total Classes" /></td>
					<td><form:input path="totalClasses" /></td>
				</tr>
				<tr>
					<label>Passed Classes</label>
					<td><spring:message code="passedClasses" text="Passed Classes" /></td>
					<td><form:input path="passedClasses" /></td>
				</tr>
				<tr>
					<label>Failed Classes</label>
					<td><spring:message code="failedClasses" text="Failed Classes" /></td>
					<td><form:input path="failedClasses" /></td>
				</tr>
				<tr>
					<label>Enabled</label>
					<td><spring:message code="enabled" text="enabled" /></td>
					<td><form:input path="enabled" /></td>
				</tr>
				<tr>
					<label>Progress Indicator</label>
					<td><spring:message code="progessIndicator"
							text="Progess Indicator" /></td>
					<td><form:input path="progessIndicator" /></td>
				</tr>
				<tr>
					<label>Direction</label>
					<td><spring:message code="direction" text="Direction" /></td>
					<td><form:input path="direction" /></td>
				</tr>
				<tr>
					<label>Program</label>
					<td><spring:message code="program" text="program" /></td>
					<td><form:input path="program" /></td>
				</tr>
			
				<tr>
					<label>ROLE</label>
					<td><spring:message code="authorities" text="authorities" /></td>
					<td><form:input path="authorities" /></td>
				</tr>
					<tr>
					<td colspan="2"><input type="submit" value="Add User" /></td>
				</tr>
			</table>
		</form:form>



	</div>

</body>
</html>

