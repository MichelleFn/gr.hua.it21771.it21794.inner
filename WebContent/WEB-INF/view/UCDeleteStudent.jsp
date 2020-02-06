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

		<h3>Διαγραφή Χρήστη</h3>



		<h2>
			<spring:message code="lbl.page" text="Delete Student" />
		</h2>
		<br />
		<form:form method="post" modelAttribute="user">
			<table>
				<tr>
					<Label>Παρακαλώ πληκτρολογήστε το όνομα του χρήστη για διαγραφή</Label>

					<td><label>Όνομα Χρήστη</label> <spring:message code="username"
							text="username" /></td>
					<td><form:input path="username" /></td>

				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="Διαγραφή" /></td>
				</tr>
			</table>
		</form:form>





	</div>

</body>
</html>