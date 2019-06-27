<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!-- 导航侧栏 -->
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="${pageContext.request.contextPath}/img/user2-160x160.jpg" class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p><security:authentication property="principal.username"></security:authentication></p>
				<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">菜单</li>
			<li id="admin-index">
				<a href="${pageContext.request.contextPath}/pages/main.jsp">
					<i class="fa fa-dashboard"></i>
					<span>首页</span>
				</a>
			</li>

			<%--系统管理--%>
			<li class="treeview">
				<a href="#">
					<i class="fa fa-cogs"></i>
					<span>系统管理</span>
					<span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<security:authorize access="hasRole('ADMIN')">
					<li id="system-setting">
						<a href="${pageContext.request.contextPath}/systemUser/findAll.do"> <i class="fa fa-circle-o"></i> 用户管理</a>
					</li>
					<li id="system-setting">
						<a href="${pageContext.request.contextPath}/role/findAll.do"> <i class="fa fa-circle-o"></i> 角色管理</a>
					</li>
					<li id="system-setting">
						<a href="${pageContext.request.contextPath}/permission/findAll.do"><i class="fa fa-circle-o"></i> 资源权限管理</a>
					</li>
					</security:authorize>
					<li id="system-setting">
						<a href="${pageContext.request.contextPath}/sysLog/findAll.do"> <i class="fa fa-circle-o"></i> 访问日志</a>
					</li>
				</ul>
			</li>
			<%--系统管理--%>

			<%--基础数据--%>
			<li class="treeview">
				<a href="#">
					<i class="fa fa-cube"></i>
					<span>基础数据</span>
					<span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<%--
					<li id="system-setting">
						<a href="${pageContext.request.contextPath}/product/findAll.do"><i class="fa fa-circle-o"></i> 产品管理</a>
					</li>
					<li id="system-setting">
						<a href="${pageContext.request.contextPath}/orders/findAll.do?page=1&size=4"> <i class="fa fa-circle-o"></i> 订单管理</a>
					</li>
					--%>
					<li id="admin-login">
						<a href="${pageContext.request.contextPath}/pages/baseData/user.jsp"><i class="fa fa-circle-o"></i> 查询所有前台用户</a>
					</li>
					<li id="admin-login">
						<a href="#"><i class="fa fa-circle-o"></i> 空菜单01</a>
					</li>
					<li id="admin-login">
						<a href="#"><i class="fa fa-circle-o"></i> 空菜单02</a>
					</li>
				</ul>
			</li>
			<%--基础数据--%>

			<%--试岗助攻--%>
			<li class="treeview">
				<a href="#">
					<i class="fa fa-folder"></i>
					<span>试岗助攻</span>
					<span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<li id="profit-summary">
						<a href="${pageContext.request.contextPath}/pages/interviewHelp/profitSummary.jsp"><i class="fa fa-circle-o"></i> POS机收益概览</a>
					</li>
				</ul>
			</li>
			<%--试岗助攻--%>
		</ul>
	</section>
	<!-- /.sidebar -->
</aside>
<!-- 导航侧栏 /-->