<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Checkerboard</title>
	<link rel = "stylesheet" type = "text/css" href = "checkstyle.css">
</head>
<body>
	<% int width; %>
	<% if (request.getParameter("width") == null) { %>
    	<% width = 0; %>
    <% } else {%>
    	<% width = Integer.parseInt(request.getParameter("width")); %>
    <% } %>
    <% int height; %>
	<% if (request.getParameter("height") == null) { %>
    	<% height = 0; %>
    <% } else {%>
    	<% height = Integer.parseInt(request.getParameter("height")); %>
    <% } %>
    
    <h3>Checkerboard: <%= width %>w X <%= height %>h</h3>
    
    <table>
    <% for (int i = 0; i < height; i++) { %>
    	<tr>
    	<% for (int j = 0; j < width; j++) { %>
    		<td class = 'color<%= (i + j) % 2 + 1 %>'></td>
    	<% } %>
    	</tr>
    <% } %>
    </table>
</body>
</html>