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
		角色管理 <small>添加权限表单</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="${pageContext.request.contextPath}/index.jsp"><i
				class="fa fa-dashboard"></i> 首页</a></li>
		<li><a
			href="${pageContext.request.contextPath}/role/findAll.do">角色管理</a></li>
		<li class="active">添加权限表单</li>
	</ol>
	</section>
	<!-- 内容头部 /-->

	<form
		action="${pageContext.request.contextPath}/role/addPermissionToRole.do"
		method="post">
		<!-- 正文区域 -->
		<section class="content">

		<input type="hidden" name="roleId" value="${role.id}">

			<table id="dataList"
					class="table table-bordered table-striped table-hover dataTable">
					<thead>
						<tr>
							<th class="" style="padding-right: 0px">
							<input id="selall"
								type="checkbox" class="icheckbox_square-blue"></th>
							<th class="sorting_asc">ID</th>
							<th class="sorting">权限名称</th>
							<th class="sorting">权限URL</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${permissionList}" var="permission">
							<tr>
								<td>

								<input name="ids" type="checkbox" value="${permission.id}">

								</td>
								<td>${permission.id}</td>
								<td>${permission.permissionName }</td>
								<td>${permission.url}</td>

							</tr>
						</c:forEach>
					</tbody>

				</table>
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