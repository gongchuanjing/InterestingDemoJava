<%--
  Created by IntelliJ IDEA.
  User: ChuanJing
  Date: 2019/6/22
  Time: 19:45
  主页面
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 页面上部 -->
<jsp:include page="my_above.jsp"></jsp:include>
<!-- 页面上部 /-->

<!-- 内容区域 -->
<div class="content-wrapper">
    <img src="${pageContext.request.contextPath}/img/center.jpg" width="100%" height="100%" />
</div>
<!-- 内容区域 /-->

<!-- 页面下部 -->
<jsp:include page="my_below.jsp"></jsp:include>
<!-- 页面下部 /-->