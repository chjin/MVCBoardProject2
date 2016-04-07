<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.sist.movie.dao.*"%>
<%
	String no=request.getParameter("no");
	MovieManager m=new MovieManager();
	MovieDTO d=m.movieDetail(Integer.parseInt(no));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../databoard/table.css/table.css">
</head>
<body>
	<center>
	<h3><%=d.getTitle() %>상세보기</h3>
	 <table id="table_content">
	  <tr>
	   <td width="30%" align="center" rowspan="6">
	    <img src="<%=d.getImage() %>">
	   </td>
	   <td colspan="2" align="center"><%=d.getTitle() %></td>
	  </tr>
	  <tr>
	   <td width="20%" align="center">
	    예매율
	   </td>
	   <td width="50%" align="left"><%=d.getReserve() %>%</td>
	  </tr>
	  <tr>
	   <td width="20%" align="center">
	    별점
	   </td>
	   <td width="50%" align="left"><%=d.getStar() %>%</td>
	  </tr>
	  <tr>
	   <td width="20%" align="center">
	    Like
	   </td>
	   <td width="50%" align="left"><%=d.getLike() %></td>
	  </tr>
	  <tr>
	   <td width="20%" align="center">
	    등급
	   </td>
	   <td width="50%" align="left"><%=d.getGrade() %></td>
	  </tr>
	  <tr>
	   <td width="20%" align="center">
	    개봉일
	   </td>
	   <td width="50%" align="left"><%=d.getRegdate() %></td>
	  </tr>
	 </table>
	 <table id="table_content">
	  <tr>
	   <td align="right">
	    <a href="#">예매</a>&nbsp;
	    <a href="javascript:history.back()">목록</a>
	   </td>
	  </tr>
	 </table>
	</center>
</body>
</html>