<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%--这个标签通过include引入无效，必须在这个页面重新导入--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 页面上部 -->
<jsp:include page="../my_above.jsp"></jsp:include>
<!-- 页面上部 /-->

<!-- 内容区域 -->
<div class="content-wrapper">

	<!-- 内容头部 -->
	<section class="content-header">
	<h1>
		资源权限管理 <small>资源权限表单</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="${pageContext.request.contextPath}/index.jsp"><i
				class="fa fa-dashboard"></i> 首页</a></li>
		<li><a href="${pageContext.request.contextPath}/permission/findAll.do">资源权限管理</a></li>
		<li class="active">资源权限表单</li>
	</ol>
	</section>
	<!-- 内容头部 /-->

	<form action="${pageContext.request.contextPath}/permission/save.do"
		method="post">
		<!-- 正文区域 -->
		<section class="content"> <!--产品信息-->

		<div class="panel panel-default">
			<div class="panel-heading">资源权限信息</div>
			<div class="row data-type">

				<div class="col-md-2 title">权限名称</div>
				<div class="col-md-4 data">
					<input type="text" class="form-control" name="permissionName"
						placeholder="权限名称" value="">
				</div>
				<div class="col-md-2 title">RUL</div>
				<div class="col-md-4 data">
					<input type="text" class="form-control" name="url"
						placeholder="URL" value="">
				</div>


			</div>
		</div>
		<!--订单信息/--> <!--工具栏-->
		<div class="box-tools text-center">
			<button type="submit" class="btn bg-maroon">保存</button>
			<button type="button" class="btn bg-default"
				onclick="history.back(-1);">返回</button>
		</div>
		<!--工具栏/--> </section>
		<!-- 正文区域 /-->
	</form>
</div>
<!-- 内容区域 /-->

<!-- 页面下部 -->
<jsp:include page="../my_below.jsp"></jsp:include>
<!-- 页面下部 /-->