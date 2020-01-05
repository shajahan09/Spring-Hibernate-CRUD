<%-- 
    Document   : allProducts
    Created on : 08-Nov-2019, 02:20:11
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">All View Products...</h1>
<!--        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" placeholder="Name"/></td>
            </tr>
            <tr>
                <td>Quantity</td>
                <td><input type="number" placeholder="Quantity"/></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="number" placeholder="Price"/></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="number" placeholder="Price"/></td>
            </tr>
            
            
        </table>-->
            <table border="1">
                    <tr>
                        <td>ID</td>
                        <td>Name</td>
                        <td>Quantity</td>
                        <td>Price</td>
                        <td colspan="2">Action</td>
                    </tr>
                    <c:forEach items="${products}" var="product">
                    <tr>
                        <td>${product.id}</td>
                         <td>${product.name}</td>
                          <td>${product.qty}</td>
                           <td>${product.price}</td>
                           <td><a href="/SpringEvidencetest/edit/${product.id}" >Edit</a></td>
                           <td><a href="/SpringEvidencetest/delete/${product.id}" >Delete</a></td>
                    </tr>
                    </c:forEach>
                    <p><a href="/SpringEvidencetest/view" >add new product</a></p>
            </table>
            
    </body>
</html>
