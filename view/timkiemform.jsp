<%-- 
    Document   : timkiemform
    Created on : Dec 1, 2021, 10:23:33 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search Page</title>
    </head>
    <body>
        <form method="POST" action="timkiemsv" >
    <table align="center">
        <caption align="center" style="font-weight: bold;">Tìm kiếm sinh viên</caption>
         <tr>
            <td style="font-weight: bold;">ID:</td>
            <td><input type="text" name="id" /></td>
        </tr> 
        <tr>
            <td style="font-weight: bold;">Name:</td>
            <td><input type="text" name="ten" /></td>
        </tr>
        <tr>
            <td style="font-weight: bold;">Age:</td>
            <td><input type="text" name="tuoi"/></td>
        </tr>
        <tr>
            <td style="font-weight: bold;">Dia chi:</td>
            <td><input type="text" name="diachi"/></td>
        </tr>
        <tr>
            <td colspan="2" align="right"><input type="submit" name="Search" value="Search"/> <input type="reset" value="Reset"/></td>
        </tr>
    </table>
    </form>
    </body>
</html>
