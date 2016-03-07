<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="tagfileName" required="true" %>
<%@ attribute name="tagfileLabel" required="true" %>
<%@ attribute name="tagfileId" %>
<label> ${tagfileLabel}</label>
<input id="${tagfileId}" class="form-control" name="${tagfileName}" type="text" />
<script type="text/javascript">
	$("#${tagfileId}").datepicker();
</script>
