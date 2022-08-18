<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Courier Registered Details</title>
<style><%@include file="/WEB-INF/views/css/courierstatuslist.css"%>

 </style>
</head>
<body>
      <h2>STATUS UPDATE LIST</h2>
	<div id="table root">
		<table>
			<thead>
				<tr>
				    <th>Courier ReferenceNo</th>
					<th>Status UpdateDate</th>
					<th>CurrentPlace</th>
					<th>checkInTime</th>
					<th>checkOutTime</th>
					<th>courierStatus</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="costatus" items="${courierstatuslist}">
					<tr>
					    <td>${costatus.courierReferenceNo}</td>
						<td>${costatus.statusUpdateDate}</td>
						<td>${costatus.currentPlace}</td>
						<td>${costatus.checkInTime}</td>
						<td>${costatus.checkOutTime}</td>
						<td>${costatus.courierStatus}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div  class ="back">
		         <a href="/courier/courierlist"> <input
				onclick="change()" type="button" value="Back"></input>
			</a>
		 </div>
	</div>
</body>
</html>



