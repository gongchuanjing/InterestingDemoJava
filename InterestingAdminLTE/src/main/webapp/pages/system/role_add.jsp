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
		角色管理 <small>角色表单</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="${pageContext.request.contextPath}/index.jsp"><i
				class="fa fa-dashboard"></i> 首页</a></li>
		<li><a href="${pageContext.request.contextPath}/role/findAll.do">角色管理</a></li>
		<li class="active">角色表单</li>
	</ol>
	</section>
	<!-- 内容头部 /-->

	<form action="${pageContext.request.contextPath}/role/save.do"
		method="post">
		<!-- 正文区域 -->
		<section class="content"> <!--产品信息-->

		<div class="panel panel-default">
			<div class="panel-heading">角色信息</div>
			<div class="row data-type">

				<div class="col-md-2 title">角色名称</div>
				<div class="col-md-4 data">
					<input type="text" class="form-control" name="roleName"
						placeholder="角色名称" value="">
				</div>
				<div class="col-md-2 title">角色描述</div>
				<div class="col-md-4 data">
					<input type="text" class="form-control" name="roleDesc"
						placeholder="角色描述" value="">
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