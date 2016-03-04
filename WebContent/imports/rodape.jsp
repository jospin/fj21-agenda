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
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->