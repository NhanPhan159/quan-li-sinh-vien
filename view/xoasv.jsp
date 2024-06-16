<%-- 
    Document   : xoasv
    Created on : Dec 1, 2021, 4:05:03 PM
    Author     : DELL
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.bean.sinhvien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="xoa" method="post">
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
	
	ArrayList<sinhvien> sv=(ArrayList<sinhvien>)request.getAttribute("sv");
	for (int i=0;i<sv.size();i++){
	%>
		<tr>
                        <td><%= sv.get(i).getId()%></td>
			<td><%= sv.get(i).getTen()%></td>
                        <td><%= sv.get(i).getTuoi()%></td>
                        <td><%= sv.get(i).getDiachi()%></td>
                        <td><a href="xoa?id=<%= sv.get(i).getId()%>">Xoa</td>
		</tr>
		<% } %>
	</table>
    </center>
        </form>
    </body>
</html>
