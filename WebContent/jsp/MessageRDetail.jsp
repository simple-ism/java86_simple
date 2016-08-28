<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{ margin: 0 auto;}
  table,tr,td { padding: 0px; border-collapse:collapse;} 
/*   html,body,table,tr,td {border: 1px solid black;}   */

  
</style>
</head>
<body>
<div class="container">
	<form action="${pageContext.request.contextPath}/MassageWrite" method="post">
	<div class="header">
		
		<%@ include file="/msInclude/msTopW.jsp" %>
	<hr color="#CACACA">
	</div>	
	<div class="content" >
		<input type="hidden" name="memId" value="${msvo.mSendId}" />
		<input type="hidden" name="memName" value="${msvo.mSendName}" />
		<table width="500px" height="300px" cellpadding="0" cellspacing="0" style="table-layout: fixed;" border="0">
			<tr>
				<td width="30%">보낸사람</td>
				<td width="70%">
				<a href="${pageContext.request.contextPath}/MessageWrite?mSendId=${msvo.mSendId}&memName=${msvo.mSendName}"><c:out value="${msvo.mSendName}"/></a>
				</td>
			</tr>
			<tr>
				<td width="40%">제목</td>
				<td width="60%"><c:out value="${msvo.mTitle}"/></td>
			</tr>
			<tr>
				<td width="30%">내용</td>
				<td width="70%"><c:out value="${msvo.mContent}"/></td>
			</tr>
			<tr>
				<td width="30%">보낸시간</td>
				<td width="70%"><c:out value="${msvo.mRegDate}"/></td>
			</tr>
		</table>
		
		
	</div>
	<div class="footer">
	<hr color="#CACACA">
		<%@ include file="/msInclude/msBottom1.jsp" %>
	</div>
		</form>
</div>
</body>
</html>