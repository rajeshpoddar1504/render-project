<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>
	<jsp:include page="header.jsp" />
	<div class="body-main-cont" style="height: 100vh; width: 100vw;">
	<c:forEach var="note_file" items="${notes_file }" varStatus="loop" begin="1">
	<div class="content-center">Page No: ${loop.index}</div>
		<img alt="img" class="notes-image"
				src="${note_file}" />
	</c:forEach>
			
	</div>

</body>
</html>