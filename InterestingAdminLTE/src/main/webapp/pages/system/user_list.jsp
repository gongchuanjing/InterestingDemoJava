<%--
  Created by IntelliJ IDEA.
  User: ChuanJing
  Date: 2019/6/22
  Time: 19:45
--%>
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
		<h1>用户管理 <small>全部用户</small></h1>
		<ol class="breadcrumb">
			<li><a href="${pageContext.request.contextPath}/index.jsp"><i class="fa fa-dashboard"></i> 首页</a></li>
			<li><a href="${pageContext.request.contextPath}/systemUser/findAll.do">用户管理</a></li>
			<li class="active">全部用户</li>
		</ol>
	</section>
	<!-- 内容头部 /-->

	<!-- 正文区域 -->
	<section class="content"> <!-- .box-body -->
		<div class="box box-primary">
			<div class="box-header with-border">
				<h3 class="box-title">列表</h3>
			</div>

			<div class="box-body">

				<!-- 数据表格 -->
				<div class="table-box">

					<!--工具栏-->
					<div class="pull-left">
						<div class="form-group form-inline">
							<div class="btn-group">
								<button type="button" class="btn btn-default" title="新建" onclick="location.href='${pageContext.request.contextPath}/pages/system/user_add.jsp'">
									<i class="fa fa-file-o"></i> 新建
								</button>

								<button type="button" class="btn btn-default" title="刷新">
									<i class="fa fa-refresh"></i> 刷新
								</button>
							</div>
						</div>
					</div>
					<div class="box-tools pull-right">
						<div class="has-feedback">
							<input type="text" class="form-control input-sm"
								placeholder="搜索"> <span
								class="glyphicon glyphicon-search form-control-feedback"></span>
						</div>
					</div>
					<!--工具栏/-->

					<!--数据列表-->
					<table id="dataList"
						class="table table-bordered table-striped table-hover dataTable">
						<thead>
							<tr>
								<th class="" style="padding-right: 0px"><input
									id="selall" type="checkbox" class="icheckbox_square-blue">
								</th>
								<th class="sorting_asc">ID</th>
								<th class="sorting_desc">用户名</th>
								<th class="sorting_asc sorting_asc_disabled">邮箱</th>
								<th class="sorting_desc sorting_desc_disabled">联系电话</th>
								<th class="sorting">状态</th>
								<th class="text-center">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${userList}" var="user">
								<tr>
									<td><input name="ids" type="checkbox"></td>
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.email}</td>
									<td>${user.phoneNum}</td>
									<td>${user.statusStr}</td>
									<td class="text-center">
										<a href="${pageContext.request.contextPath}/systemUser/findById.do?id=${user.id}" class="btn bg-olive btn-xs">详情</a>
										<a href="${pageContext.request.contextPath}/systemUser/findUserByIdAndAllRole.do?id=${user.id}" class="btn bg-olive btn-xs">添加角色</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<!--数据列表/-->

				</div>
				<!-- 数据表格 /-->

			</div>
			<!-- /.box-body -->

			<!-- .box-footer-->
			<div class="box-footer">
				<div class="pull-left">
					<div class="form-group form-inline">
						总共2 页，共14 条数据。 每页 <select class="form-control">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select> 条
					</div>
				</div>

				<div class="box-tools pull-right">
					<ul class="pagination">
						<li><a href="#" aria-label="Previous">首页</a></li>
						<li><a href="#">上一页</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">下一页</a></li>
						<li><a href="#" aria-label="Next">尾页</a></li>
					</ul>
				</div>

			</div>
			<!-- /.box-footer-->

		</div>
	</section>
	<!-- 正文区域 /-->

</div>
<!-- 内容区域 /-->

<!-- 页面下部 -->
<jsp:include page="../my_below.jsp"></jsp:include>
<!-- 页面下部 /-->