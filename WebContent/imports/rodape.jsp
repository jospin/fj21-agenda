<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<footer>
	<hr />
		<p>
			@copyright
			<jsp:useBean id="today" class="java.util.Date"></jsp:useBean>
			<fmt:formatDate type="date" value="${today}" pattern="Y"/>
			- Todos os direitos reservados. 
		</p>
</footer>