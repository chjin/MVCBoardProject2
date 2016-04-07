<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="table.css">
</head>
<body>
 <center>
  <table id="table_content">
   <tr>
   		<c:forEach var="d" items="${list }">
   		<td>
   		 <a href="main.jsp?mode=8&no=${d.getNo()}">
   		  <img src="${d.getImage()}" width=100 height="120">
   		 </a>
   		</td>
   		</c:forEach>
   </tr>
   <tr>
	<c:forEach var="d" items="${list }">
   		<td class="tdcenter"><b>${ d.getTitle()}</b></td>
    </c:forEach>
   </tr>
   <tr>
  	<c:forEach var="d" items="${list }">
   		<td class="tdcenter">${d.getRegdate()}</td>
   	</c:forEach>
   </tr>
   <tr>
   	<c:forEach var="d" items="${list }">
   		<td class="tdcenter"><font color=red>${d.getGrade()}</font></td>
   	</c:forEach>
   </tr>
  </table>
  <table border=0 width=600 cellpadding=0 cellspacing=0>
   <tr>
    <td align="left" valign="top">
      <table id="table_content">
       <tr>
        <th>영화 순위</th>
       </tr>
       
       <c:forEach var="name" items="${mRank }">
       		<tr>
       		 <td id="tdleft">${name}</td>
       		</tr>
       </c:forEach>
       
      </table>
    </td>
    <td align="left" valign="top">
      <table id="table_content">
       <tr>
        <th>영화예매순위</th>
       </tr>
       <c:forEach var="name" items="${mReserve }">
       		<tr>
       		 <td id="tdleft">${name}</td>
       		</tr>
       </c:forEach>
      </table>
    </td>
    <td align="left" valign="top">
      <table id="table_content">
       <tr>
        <th>영화 박스오피스</th>
       </tr>
       <c:forEach var="name" items="${mBoxoffice }">
       		<tr>
       		 <td id="tdleft">${name}</td>
       		</tr>
       </c:forEach>
      </table>
    </td>
   </tr>
  </table>
 </center>
</body>
</html>