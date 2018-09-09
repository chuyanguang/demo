<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>add</title>
  </head>
  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-1.8.3.js"></script>
  <script type="text/javascript">
	  $(function(){
	  	$("#myform").submit(function(){
		  	var gender=$("#gender").val();
		  	var level=$("#level").val();
		  	var department=$("#department").val();
	  			if(gender=="请选择" || level=="请选择" || department=="请选择"){
	  				alert("请完善信息！");
	  				return false;
	  			}
	  		});
	  });
  </script>
  <body>
  	<form action="${pageContext.request.contextPath}/user/add" method="post" id="myform">
  		<table width="80%" border="1" align="center">
  			<tr>
  				<td>姓名</td>
  				<td><input type="text" name="name" required></td>
  			</tr>
  			<tr>
  				<td>性别</td>
  				<td>
	  				<select name="gender"  id="gender">
	  					<option>请选择</option>
	  					<option value="0">男</option>
	  					<option value="1">女</option>
	  				</select>
  				</td>
  			</tr>
  			<tr>
  				<td>年龄</td>
  				<td><input type="text" name="age" required ></td>
  			</tr>
  			<tr>
  				<td>等级</td>
  				<td>
  					<select name="level"  id="level">
	  					<option>请选择</option>
	  					<option value="1">1级</option>
	  					<option value="2">2级</option>
	  					<option value="3">3级</option>
	  					<option value="4">4级</option>
	  					<option value="5">5级</option>
	  				</select>
  				</td>
  			</tr><tr>
  				<td>部门</td>
  				<td>
  					<select name="department" id="department" >
	  					<option>请选择</option>
	  					<option value="1">开发部</option>
	  					<option value="2">支持部</option>
	  					<option value="3">工程质量部</option>
	  				</select>
  				</td>
  			</tr>
  		</table>
  		<div style="margin:0 auto;"><input type="submit" value="提交"></div>
  		<div style="color:red;">${msg}</div>
  	</form>
  </body>
</html>
