<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<th>IdDipendente</th>
				<th>NomeDipendente</th>
				<th>OreLavorate</th>
				<th>modifica</th>
				
			</tr>
		<c:forEach items="${page.content}"  var="d" >
			<tr>
				<th>${d.idDipendente}</th>
				<th>${d.nomeDipendente}</th>
				<th>${d.oreLavorate}</th>
				<th><a href="${pageContext.request.contextPath }/dipen/${d.idDipendente}">modifica</a></th>
			</tr>
		</c:forEach>
		<tr>
				<td colspan="8">
					TotalEmps${page.totalElements }&nbsp;&nbsp;
					TotalPages${page.totalPages } &nbsp;&nbsp;
					CurrentPage${page.number + 1 } &nbsp;&nbsp;
					<a href="?pageNo=${page.number + 1 - 1 }">Previous</a>&nbsp;&nbsp;
					<a href="?pageNo=${page.number + 1 + 1 }">Next</a>
				</td>
			</tr>
		</table>
</body>


</html>