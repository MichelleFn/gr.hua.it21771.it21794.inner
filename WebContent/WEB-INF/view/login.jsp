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
		<i>Sorry! Invalid username/password or you are not enabled</i>
	</c:if>
	
			<br>
			<input type="text" id ="username1" placeholder="Όνομα Χρήστη" name="username" required/>
		
			<br>
			<br>
			<input type="password" id="password1" placeholder="Κωδικός Πρόσβασης" name="password" required/><br><br>
			<button class="myButton" type="submit">Σύνδεση</button>
	 
      
		
			</div>
			
	</form:form>
	
</div>

	
