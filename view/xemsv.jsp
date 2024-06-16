<%-- 
    Document   : xemkhoa
    Created on : Nov 29, 2021, 10:54:59 AM
    Author     : DELL
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="Model.bean.sinhvien"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <% String s = (String)request.getAttribute("s");%>
        <h1><%=s %></h1>
        <table border="1">
	<tr>
	<td> ID </td>
	<td> ten </td>
        <td> tuoi </td>
        <td> diachi </td>

	</tr>
	<%
	
	ArrayList<sinhvien> sv=(ArrayList<sinhvien>)request.getAttribute("svarray");
	for (int i=0;i<sv.size();i++){
	%>
		<tr>
                        <td><%= sv.get(i).getId()%></td>
			<td><%= sv.get(i).getTen()%></td>
                        <td><%= sv.get(i).getTuoi()%></td>
                        <td><%= sv.get(i).getDiachi()%></td>
		</tr>
		<% } %>
	</table>
    </center>
            <p><a href="javascript:history.back()">Back</a></p>
    </body>
</html>
