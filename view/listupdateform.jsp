<%-- 
    Document   : listupdateform
    Created on : Dec 1, 2021, 3:09:01 PM
    Author     : DELL
--%>

<%@page import="Model.bean.sinhvien"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <center>
        <h1>Danh sach sinh vien</h1>
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
                        <td><a href="xuliupdate?id=<%= sv.get(i).getId()%>">update</a></td>
		</tr>
		<% } %>
	</table>
    </center>
    </body>
</html>
