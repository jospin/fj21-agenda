<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="id" required="true" %>
<p>
	<label> Data Nascimento</label>
	<input id="${id}" name="${id}" type="text" />
</p>
<script type="text/javascript">
	$("#${id}").datepicker();
</script>
