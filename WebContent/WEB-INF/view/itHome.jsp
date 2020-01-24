<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
				<label>Department</label>
				<td><spring:message code="department" text="department" /></td>
				<td><form:input path="department" /></td>
				<label>for department use "it"</label>
				
			</tr>
			
			<tr>
				<label>thesis name</label>
				<td><spring:message code="ThesisName" text="ThesisName" /></td>
				<td><form:input path="ThesisName" /></td>
				<label>please type the name exactly as it appears in the list above</label>
			</tr>
		</table>
	</form:form>
	>
</body>
</html>