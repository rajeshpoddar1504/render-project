<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>
<jsp:include page="header.jsp" />
	<div style=" height: 100%;" class="body-main-cont content-center">
	<form action="save-notes" style=" height: 90%; " method="POST">
		<div>Write your notes here</div>
		<textarea rows="" cols="" style=" height: 90%; width: 100%" name="notesdata"></textarea>
		<input type="submit">
	</form>
	</div>
	<footer > All right reserved rajesh poddar</footer>
</body>
</html>