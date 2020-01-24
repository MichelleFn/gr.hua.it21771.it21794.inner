<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="//www.html.am/html-codes/forms/html-form-tag-action.cfm"
		target="result2" method="get">
		<p>What would you like for lunch?</p>
		<select name="fruit" multiple>
			<option value="none">Nothing</option>
			<option value="guava">Guava</option>
			<option value="lychee">Lychee</option>
			<option value="papaya">Papaya</option>
			<option value="watermelon">Watermelon</option>
		</select>
		<p>
			<input type="submit" value="Submit">
		</p>
	</form>
	<h3>Result:</h3>
	<iframe name="result2" style="height: 100px; width: 200px;"></iframe>

</body>
</html>