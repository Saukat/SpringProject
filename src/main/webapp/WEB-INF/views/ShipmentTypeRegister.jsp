<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h3>Welcome to Shipment Type Registration</h3>
	<form action="save" method="post">
	<pre>
        Shipment Mode:
           <select name="shipMode">
              <option>--Select--</option>
              <option>Air</option>
              <option>Truck</option> 
              <option>Ship</option>
              <option>Train</option>
           </select>
           
        Shipment Code:
           <input type="text" name="shipCode"/>   
           
        Enable Shipment:
           <select name="enbShip">
              <option>--Select--</option>
              <option>YES</option>
              <option>NO</option> 
           </select>
           
        Shipment Grade:
           <input type="radio" name="shipGrade" value="A">A
           <input type="radio" name="shipGrade" value="B">B
           <input type="radio" name="shipGrade" value="C">C
           
        Description:
           <textarea name="shipDesc"></textarea>  
           
           <input type="submit" value="CREATE SHIPMENT"> 
    </pre>
 </form>  
 ${message}
</body>
</html>