<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/*   table,tr,td {border: 1px solid black;} */
</style>
</head>
<body>
<div class="container">
	<div class="header">
		
		<%@ include file="/msInclude/msTop1.jsp" %>
	<hr color="#CACACA">
	</div>	
	<div class="content">
		<table width="100%" height="60%">
			<tr>
				<td width="5%"><img  align="left" src="${pageContext.request.contextPath}/images/memo_c.gif"/></td>
				<td width="75%"><img  align="left" src="${pageContext.request.contextPath}/images/memo_subject.gif"/></td>
				<td width="10%"><img  align="left" src="${pageContext.request.contextPath}/images/memo_from.gif"/></td>
				<td width="10%"><img  align="left" src="${pageContext.request.contextPath}/images/memo_date.gif"/></td>
				
			</tr>
		</table>
		<hr color="#CACACA">
		
		<c:if test="${!empty msList }">
			<c:forEach var="msvo" items="${msList}">
				<tr>
					<td><input type="checkbox" name="msDelNo" value="${msvo.mNo}"/></td>
					<td><a href="${pageContext.request.contextPath}/MessageRDetail"><c:out value="${msvo.mTitle}"/></a></td>
					<td><c:out value="${msvo.mSendId}"/></td>
					<td><c:out value="${msvo.mRegDate}"/></td>
				</tr>	
			</c:forEach>
		</c:if>
		
	</div>
	<div class="footer">
	<hr color="#CACACA">
		<%@ include file="/msInclude/msBottom1.jsp" %>
	</div>
</div>
</body>
</html>