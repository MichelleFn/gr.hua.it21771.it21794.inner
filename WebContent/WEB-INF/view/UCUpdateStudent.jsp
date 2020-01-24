Anna, 3:36 μμ
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

		<h3>Ανανέωση Φοιτητή</h3>



		<h2>
			<spring:message code="lbl.page" text="Add New Student" />
		</h2>
		<br />
		<form:form method="post" modelAttribute="user">
			<table>
				<tr>
				
					
					<td><label>Username</label><spring:message code="username" text="username" /></td>
					<td><form:input path="username" /></td>
				
				</tr>
				<tr>
					
					<td><label>Password</label><spring:message code="password" text="password" /></td>
					<td><form:input path="password" /></td>
				</tr>
				<tr>
					
					<td><label>department</label><spring:message code="department" text="department" /></td>
					<td><form:input path="department" /></td>
				</tr>
				<tr>
					
					<td><label>First Name</label><spring:message code="first_name" text="First Name" /></td>
					<td><form:input path="firstName" /></td>
				</tr>
				<tr>
					
					<td><label>Surname</label><spring:message code="surname" text="Surname" /></td>
					<td><form:input path="surname" /></td>
				</tr>
				<tr>
					
					<td><label>Current Semester</label><spring:message code="currentSemester"
							text="currentSemester" /></td>
					<td><form:input path="currentSemester" /></td>
				</tr>
				<tr>
					
					<td><label>Total Classes</label><spring:message code="totalClasses" text="Total Classes" /></td>
					<td><form:input path="totalClasses" /></td>
				</tr>
				<tr>
					
					<td><label>Passed Classes</label><spring:message code="passedClasses" text="Passed Classes" /></td>
					<td><form:input path="passedClasses" /></td>
				</tr>
				<tr>
					
					<td><label>Failed Classes</label><spring:message code="failedClasses" text="Failed Classes" /></td>
					<td><form:input path="failedClasses" /></td>
				</tr>
				<!--  <tr>
				
					<td><label>Enabled</label><spring:message code="enabled" text="enabled" /></td>
					<td><form:input path="enabled" /></td>
				</tr>
					<tr>
					-->
				
					<td><label>Progress Indicator</label><spring:message code="progessIndicator" text="progessIndicator" /></td>
					<td><form:input path="progessIndicator" /></td>
				</tr>
				
				<tr>
					
					<td><label>Direction</label><spring:message code="direction" text="Direction" /></td>
					<td><form:input path="direction" /></td>
				</tr>
				<tr>
					
					<td><label>Program</label><spring:message code="program" text="program" /></td>
					<td><form:input path="program" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Update Student" /></td>
				</tr>
			</table>
		</form:form>





	</div>

</body>
</html>
