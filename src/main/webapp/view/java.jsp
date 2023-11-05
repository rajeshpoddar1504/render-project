<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>
<jsp:include page="header.jsp" />
<div class="body-main-cont" style="height: 100vh; width: 100vw;">
<c:forEach var = "notes_file"  items="${notes_file }" varStatus="loop">
<img alt="img" class="notes-image" src="/images/java_img/collection_framework/${notes_file}"/>
 </c:forEach>
 <%-- <img alt="img" class="notes-image" src="/images/java_img/collection_framework/${notes_file.get(0)}"/> --%>
</div>

</body>
</html>