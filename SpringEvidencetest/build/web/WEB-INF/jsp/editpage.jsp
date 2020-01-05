<%-- 
    Document   : addPro
    Created on : 08-Nov-2019, 03:09:01
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">All View Products...</h1>
        
        <form action="/SpringEvidencetest/update" method="POST">
     <table border="1">
         <tr>
                <td>id</td>
                <td><input type="text" value="${product.id}" name ="id"/></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><input type="text" value="${product.name}" name ="name" placeholder="Name"/></td>
            </tr>
            <tr>
                <td>Quantity</td>
                <td><input type="number" value="${product.qty}" name ="qty"/></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="number" value="${product.price}" name ="price"/></td>
            </tr>
            
            <tr>
                <td><input type="submit" value="Update"/></td>
                <td> </td>
            </tr>
            
            
        </table>
            </form>
    </body>
</html>
