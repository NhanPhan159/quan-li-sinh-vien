<%-- 
    Document   : updateform
    Created on : Dec 1, 2021, 3:23:03 PM
    Author     : DELL
--%>

<%@page import="Model.bean.sinhvien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% sinhvien s=(sinhvien)request.getAttribute("sv");%>
        <form action="xuliupdate?id=<%=s.getId() %>" method="POST">
    <table align="center">
        <caption align="center" style="font-weight: bold;">Cập nhật sinh viên</caption>
        <tr>
            <td style="font-weight: bold;">Name:</td>
            <td><input type="text" name="ten" value="<%=s.getTen()%>" /></td>
        </tr>
        <tr>
            <td style="font-weight: bold;">Age:</td>
            <td><input type="text" name="tuoi" value="<%=s.getTuoi()%>"/></td>
        </tr>
        <tr>
            <td style="font-weight: bold;">University:</td>
            <td><input type="text" name="diachi" value="<%=s.getDiachi()%>"/></td>
        </tr>
        <tr>
            <td colspan="2" align="right"><input type="submit" name="Update" value="Update"/> <input type="reset" value="Reset"/></td>
        </tr>
    </table>
    </form>
    <p><a href="javascript:history.back()">Back</a></p>
    </body>
</html>
