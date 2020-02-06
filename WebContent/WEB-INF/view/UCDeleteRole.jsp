<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

	<div class="ui segment">

		<h3>Delete Role</h3>



		<h2>
			<spring:message code="lbl.page" text="Delete Role" />
		</h2>
		<br />
		<form:form method="post" modelAttribute="authorities">
			<table>
				<tr>
				<Label>Role types are strictly "ROLE_USER" and "ROLE_ADMIN"</Label>
					
					<td><label>Username</label><spring:message code="username" text="username" /></td>
					<td><form:input path="username" /></td>
				
				</tr>
				<tr>
					
					<td><label>Role</label><spring:message code="authority" text="authority" /></td>
					<td><form:input path="authority" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Add Role" /></td>
				</tr>
			</table>
		</form:form>





	</div>

</body>
</html>