<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>
	<jsp:include page="header.jsp" />
	
	<%-- <pre> ${fileContent}<pre> --%>
	
	<c:forEach var="note_file" items="${notes_file}" varStatus="loop"
		begin="0">
		<div class="content-center"><a href="${note_file}" target="_self">${note_file}</a></div>
		<%-- <c:choose>
			<c:when test="${fn:endsWith(note_file, '.txt')}">
			
			</c:when>
			<c:otherwise>
			<div class="content-center"><a href="${note_file}" target="_blank">${note_file}</a></div>
			</c:otherwise>
		</c:choose> --%>
		
	</c:forEach>

</body>
</html>