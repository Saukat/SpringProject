<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h3>Welcome to Shipment Type Data Page!!</h3>

	
	<table border="1">
     <tr>
          <th>ID</th>
          <th>MODE</th>
         <!--  <th>CODE</th> -->
          <th>ENABLE</th>
          <th>GRADE</th>
          <th>NOTE</th>
      </tr>
          <c:forEach items="${list}" var="ob">
            <tr>
               <td>${ob.shipId}</td>
               <td>${ob.shipMode}</td>
              <%--  <td>${ob.shipCode}</td> --%>
               <td>${ob.enbShip}</td>
               <td>${ob.shipGrade}</td>
               <td>${ob.shipDesc}</td>
            </tr>
          </c:forEach>
     </table>
	${list}
</body>
</html>