<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="tagfileName" required="true" %>
<%@ attribute name="tagfileLabel" required="true" %>
<%@ attribute name="tagfileId" %>
<label>${tagfileLabel}: &nbsp;</label>
<input type="text" 
	class="form-control" 
	name="${tagfileName}" 
	id="${tagfileId}" />
