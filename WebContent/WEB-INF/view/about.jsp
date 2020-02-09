<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
ul.a {
  list-style-type: circle;
}</style>
</head>
<body>
<div align="left">
<sec:authorize access="hasRole('ROLE_MASTER')">


<p>Διαχειριστής Καταλόγου Χρηστών - Ενέργειες:</p>
<ul class="a">
  <li>Eπιλογή 'Εισαγωγή Χρήστη': Με αυτή την επιλογή μπορείτε να εισάγετε έναν καινούριο χρήστη στον κατάλογο χρηστών του Πανεπιστημίου<br>
  Συμπληρώνετε τη φόρμα που εμφανίζεται στη σελίδα με τα στοιχεία του χρήστη<br>
  Εάν ο χρήστης που θα εισάγετε είναι η γραμματεία (admin) τότε συμπληρώνετε μόνο τα 3 πρώτα πεδία (τύπος χρήστη, όνομα χρήστη και κωδικό πρόσβασης)<br>
  Άν ο χρήστης είναι προπτυχιακός φοιτητής, συμπληρώνετε όλα τα πεδία εκτός από τα 2 τελευταία (προόγραμμα και κατέυθυνση)</li>
  <li>Eπιλογή 'Ανανέωση Χρήστη'</li>
  <li>Eπιλογή 'Διαγραφή Χρήστη'</li>
</ul>

</sec:authorize>
</div>
</body>
</html>