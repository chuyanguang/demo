<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>list</title>
  </head>
  
  <body>
  	<c:if test="${list==null}">
  		<script>location.href="${pageContext.request.contextPath}/user/list";</script>
  	</c:if>
  	<table border="1" width="80%" align="center">
  			<thead>
  				<tr align="center">
  					<td>编号</td>
  					<td>姓名</td>
  					<td>性别</td>
  					<td>年龄</td>
  					<td>等级</td>
  					<td>部门</td>
  					<td>操作</td>
  				</tr>
  			</thead>
  			<tbody>
  				<c:forEach items="${list}" var="u" varStatus="index">
  					<tr align="center" <c:if test="${index.index%2==0}">style="background-color:red;"</c:if>>
  						<td>${u.id}</td>
  						<td>${u.name}</td>
  						<td>
  							<c:if test="${u.gender==0}">
  								男
  							</c:if>
  							<c:if test="${u.gender==1}">
  								女
  							</c:if>
  						</td>
  						<td>${u.age}</td>
  						<td>${u.level}级</td>
  						<td>
  							<c:choose>
  								<c:when test="${u.department==1}">
  									开发部
  								</c:when>
  								<c:when test="${u.department==2}">
  									支持部
  								</c:when>
  								<c:otherwise>
  									工程质量部
  								</c:otherwise>
  							</c:choose>
  						</td>
  						<td><a href="#">删除</a></td>
  					</tr>
  				</c:forEach>
  			</tbody>
  	</table>
  	<div style="margin:0 auto;"><button onclick="location.href='${pageContext.request.contextPath}/user/add'">添加人员</button></div>
  </body>
</html>
