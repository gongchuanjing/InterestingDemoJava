<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 页面上部 -->
<jsp:include page="my_above.jsp"></jsp:include>
<!-- 页面上部 /-->

<!-- 内容区域 -->
<div class="content-wrapper">
	<section class="content-header">
		<h1>失败 | 银河数据管理中心</h1>
		<ol class="breadcrumb">
			<li><a href="${pageContext.request.contextPath}/index.jsp"><i class="fa fa-dashboard"></i> 首页</a></li>
			<li class="active">登录失败</li>
		</ol>
	</section>

	<section class="content">
		<div class="error-page">
			<div class="error-content">
				<p>
					登录失败，你可以 <a href="${pageContext.request.contextPath}/login.jsp">返回到登录页面</a> 重新登录
				</p>
			</div>
		</div>
	</section>
</div>
<!-- 内容区域 /-->

<!-- 页面下部 -->
<jsp:include page="my_below.jsp"></jsp:include>
<!-- 页面下部 /-->