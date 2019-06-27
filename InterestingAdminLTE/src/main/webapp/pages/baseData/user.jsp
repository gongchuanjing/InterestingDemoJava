<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 页面上部 -->
<jsp:include page="../my_above.jsp"></jsp:include>
<!-- 页面上部 /-->

<!-- 内容区域 -->
<div class="content-wrapper" id="app">

    <!-- 内容头部 -->
    <section class="content-header">
        <h1>
            数据管理
            <small>数据列表</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
            <li><a href="#">数据管理</a></li>
            <li class="active">数据列表</li>
        </ol>
    </section>
    <!-- 内容头部 /-->

    <!-- 正文区域 -->
    <section class="content">

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
                                <button type="button" class="btn btn-default" title="新建"><i
                                        class="fa fa-file-o"></i> 新建
                                </button>
                                <button type="button" class="btn btn-default" title="删除"><i
                                        class="fa fa-trash-o"></i> 删除
                                </button>
                                <button type="button" class="btn btn-default" title="开启"><i class="fa fa-check"></i>
                                    开启
                                </button>
                                <button type="button" class="btn btn-default" title="屏蔽"><i class="fa fa-ban"></i>
                                    屏蔽
                                </button>
                                <button type="button" class="btn btn-default" title="刷新"><i
                                        class="fa fa-refresh"></i> 刷新
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="box-tools pull-right">
                        <div class="has-feedback">
                            <input type="text" class="form-control input-sm" placeholder="搜索">
                            <span class="glyphicon glyphicon-search form-control-feedback"></span>
                        </div>
                    </div>
                    <!--工具栏/-->

                    <!--数据列表-->
                    <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                        <thead>
                        <tr>
                            <th class="" style="padding-right:0px;">
                                <input id="selall" type="checkbox" class="icheckbox_square-blue">
                            </th>
                            <th class="sorting_asc">ID</th>
                            <th class="sorting_desc">用户名</th>
                            <th class="sorting_asc sorting_asc_disabled">密码</th>
                            <th class="sorting_asc sorting_asc_disabled">昵称</th>
                            <th class="sorting_desc sorting_desc_disabled">性别</th>
                            <th class="sorting">年龄</th>
                            <th class="text-center sorting">邮箱</th>
                            <th>手机号码</th>
                            <th class="text-center">操作</th>
                        </tr>
                        </thead>
                        <tbody>

                        <tr v-for="u in userList">
                            <td><input name="ids" type="checkbox"></td>
                            <td>{{u.id}}</td>
                            <td>{{u.username}}</td>
                            <td>{{u.password}}</td>
                            <td>{{u.nickname}}</td>
                            <td>{{u.sex}}</td>
                            <td>{{u.age}}</td>
                            <td class="text-center">{{u.email}}</td>
                            <td class="text-center">{{u.telephone}}</td>
                            <td class="text-center">
                                <button type="button" class="btn bg-olive btn-xs">详情</button>
                                <button type="button" class="btn bg-olive btn-xs" @click="findById(u.id)">编辑</button>
                            </td>
                        </tr>

                        </tbody>
                        <!--模态窗口-->
                        <div class="tab-pane" id="tab-model">

                            <div id="myModal" class="modal modal-primary" role="dialog">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">用户信息</h4>
                                        </div>
                                        <div class="modal-body">

                                            <div class="box-body">
                                                <div class="form-horizontal">


                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label">用户名:</label>
                                                        <div class="col-sm-5">
                                                            <input type="text" class="form-control" v-model="user.username">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label">密码:</label>
                                                        <div class="col-sm-5">
                                                            <input type="text" class="form-control" v-model="user.password">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label">昵称:</label>
                                                        <div class="col-sm-5">
                                                            <input type="text" class="form-control" v-model="user.nickname">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label">性别:</label>
                                                        <div class="col-sm-5">
                                                            <input type="text" class="form-control" v-model="user.sex">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label">年龄:</label>
                                                        <div class="col-sm-5">
                                                            <input type="text" class="form-control" v-model="user.age">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label">邮箱:</label>
                                                        <div class="col-sm-5">
                                                            <input type="text" class="form-control" v-model="user.email">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label">手机号码:</label>
                                                        <div class="col-sm-5">
                                                            <input type="text" class="form-control" v-model="user.telephone">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-outline" data-dismiss="modal">关闭</button>
                                            <button type="button" class="btn btn-outline" data-dismiss="modal" @click="update">修改</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--模态窗口/-->
                    </table>
                    <!--数据列表/-->

                    <!--工具栏-->
                    <div class="pull-left">
                        <div class="form-group form-inline">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default" title="新建"><i
                                        class="fa fa-file-o"></i> 新建
                                </button>
                                <button type="button" class="btn btn-default" title="删除"><i
                                        class="fa fa-trash-o"></i> 删除
                                </button>
                                <button type="button" class="btn btn-default" title="开启"><i class="fa fa-check"></i>
                                    开启
                                </button>
                                <button type="button" class="btn btn-default" title="屏蔽"><i class="fa fa-ban"></i>
                                    屏蔽
                                </button>
                                <button type="button" class="btn btn-default" title="刷新"><i
                                        class="fa fa-refresh"></i> 刷新
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="box-tools pull-right">
                        <div class="has-feedback">
                            <input type="text" class="form-control input-sm" placeholder="搜索">
                            <span class="glyphicon glyphicon-search form-control-feedback"></span>
                        </div>
                    </div>
                    <!--工具栏/-->
                </div>
                <!-- 数据表格 /-->
            </div>

            <!-- .box-footer-->
            <div class="box-footer">
                <div class="pull-left">
                    <div class="form-group form-inline">
                        总共2 页，共14 条数据。 每页
                        <select class="form-control">
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
                        <li>
                            <a href="#" aria-label="Previous">首页</a>
                        </li>
                        <li><a href="#">上一页</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">下一页</a></li>
                        <li>
                            <a href="#" aria-label="Next">尾页</a>
                        </li>
                    </ul>
                </div>

            </div>
            <!-- /.box-footer-->


        </div>

    </section>
    <!-- 正文区域 /-->

</div>
<!-- 内容区域 /-->

<!-- 底部导航 -->
<jsp:include page="../footer.jsp"></jsp:include>
<!-- 底部导航 /-->

</div>

<script src="${pageContext.request.contextPath}/js/vuejs-2.5.16.js"></script>
<script src="${pageContext.request.contextPath}/js/axios-0.18.0.js"></script>
<script src="${pageContext.request.contextPath}/js/user.js"></script>

</body>

</html>