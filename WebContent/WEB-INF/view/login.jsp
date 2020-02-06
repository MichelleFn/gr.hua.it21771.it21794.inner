<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="header">
  <a  class="logo">Χαρόκοπειο Πανεπιστήμιο</a>
 
</div>
<div align="middle">
<br>
<br>
<br>



	<h3><b><font color="black">Ταυτοποίηση Χρήστη</font></b></h3>
	
<div class="form-group">

	<form:form action="${pageContext.request.contextPath}/authUser" method="POST">
	<c:if test="${param.error != null}">
		<i>Sorry! Invalid username/password!</i>
	</c:if>
	
			<label class="form-label">Όνομα Χρήστη</label> 
			<input type="text" name="username"/>
		
			<label class="form-label">Κωδικός</label> 
			<input type="password" name="password"/><br><br>
			<button class="btn" type="submit">Login</button>
		
			</div>
			
	</form:form>
	
</div>

	
