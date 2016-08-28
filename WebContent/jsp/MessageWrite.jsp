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
	<div class="header">
		
		<%@ include file="/msInclude/msTopW.jsp" %>
	<hr color="#CACACA">
	</div>	
	<div class="content" >
	<form action="${pageContext.request.contextPath}/MassageWrite" method="post">
		<input type="hidden" name="mSendId" value="${session..memId}" />
		<input type="hidden" name="mRecvId" value="${request.memId}" />
		<input type="hidden" name="mRecvName" value="${session.memName}" />
		<table width="500px" height="300px" cellpadding="0" cellspacing="0" style="table-layout: fixed;" border="0">
			<tr>
				<td width="30%">이름</td>
				<td width="70%">

				<input type="text" name="mRecvName" value="${request.memName}" readonly/>
				<input type="button" value="검색" 
				onclick="location='${pageContext.request.contextPath}/MessageSearch'"/>
				</td>
			</tr>
			<tr>
				<td width="40%">제목</td>
				<td width="70%"><input type="text" name="mTitle" size="38px"/></td>
			</tr>
			<tr>
				<td width="30%">내용</td>
				<td width="70%"><textarea rows="10%" cols="40px" name="mContent"></textarea></td>
			</tr>
		</table>
		
		</form>
	</div>
	<div class="footer">
	<hr color="#CACACA">
		<%@ include file="/msInclude/msBottom1.jsp" %>
	</div>
</div>
</body>
</html>