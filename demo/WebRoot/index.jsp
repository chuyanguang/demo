<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
  </head>
  
  <body>
    <div class="pager" style="text-align:center;">
          <span>共 ${page.totalPageCount}页</span> <span>第${page.currPageNo} 页</span> <a href="${pageContext.request.contextPath}/book/getList?pageNo=1">首页</a>  
        <c:choose>  
            <c:when test="${page.currPageNo - 1 > 0}">  
                <a href="${pageContext.request.contextPath}/book/getList?pageNo=${page.currPageNo - 1}&">上一页</a>  
            </c:when>  
            <c:when test="${page.currPageNo - 1 <= 0}">  
                <a href="${pageContext.request.contextPath}/book/getList?pageNo=1">上一页</a>  
            </c:when>  
        </c:choose>  
        <c:choose>  
            <c:when test="${page.totalPageCount==0}">  
                <a href="${pageContext.request.contextPath}/book/getList?pageNo=${page.currPageNo}">下一页</a>  
            </c:when>  
            <c:when test="${page.currPageNo + 1 < page.totalPageCount}">  
                <a href="${pageContext.request.contextPath}/book/getList?pageNo=${page.currPageNo + 1}">下一页</a>  
            </c:when>  
            <c:when test="${page.currPageNo + 1 >= page.totalPageCount}">  
                <a href="${pageContext.request.contextPath}/book/getList?pageNo=${page.totalPageCount}">下一页</a>  
            </c:when>  
        </c:choose>  
        <c:choose>  
            <c:when test="${page.totalPageCount==0}">  
                <a href="${pageContext.request.contextPath}/book/getList?pageNo=${page.currPageNo}">尾页</a>  
            </c:when>  
            <c:otherwise>  
                <a href="${pageContext.request.contextPath}/book/getList?pageNo=${page.totalPageCount}">尾页</a>  
            </c:otherwise>  
        </c:choose> 
       </div>
  </body>
</html>
