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
		日志管理 <small>全部日志</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="${pageContext.request.contextPath}/index.jsp"><i
				class="fa fa-dashboard"></i> 首页</a></li>
		<li><a
			href="${pageContext.request.contextPath}/sysLog/findAll.do">日志管理</a></li>

		<li class="active">全部日志</li>
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
							<button type="button" class="btn btn-default" title="刷新"
								onclick="window.location.reload();">
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
							<th class="" style="padding-right: 0px"><input id="selall"
								type="checkbox" class="icheckbox_square-blue"></th>
							<th class="sorting_asc">ID</th>
							<th class="sorting">访问时间</th>
							<th class="sorting">访问用户</th>
							<th class="sorting">访问IP</th>
							<th class="sorting">资源URL</th>
							<th class="sorting">执行时间</th>
							<th class="sorting">访问方法</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${sysLogs}" var="syslog">
							<tr>
								<td><input name="ids" type="checkbox"></td>
								<td>${syslog.id}</td>
								<td>${syslog.visitTimeStr }</td>
								<td>${syslog.username }</td>
								<td>${syslog.ip }</td>
								<td>${syslog.url}</td>
								<td>${syslog.executionTime}毫秒</td>
								<td>${syslog.method}</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
				<!--数据列表/-->

				<!--工具栏-->
				<div class="pull-left">
					<div class="form-group form-inline">
						<div class="btn-group">
							<button type="button" class="btn btn-default" title="刷新"
								onclick="window.location.reload();">
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


			</div>
			<!-- 数据表格 /-->

		</div>
		<!-- /.box-body -->

		<!-- .box-footer-->
		<div class="box-footer">
			<div class="pull-left">
				<div class="form-group form-inline">
					总共2 页，共14 条数据。 每页 <select class="form-control">
						<option>10</option>
						<option>15</option>
						<option>20</option>
						<option>50</option>
						<option>80</option>
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