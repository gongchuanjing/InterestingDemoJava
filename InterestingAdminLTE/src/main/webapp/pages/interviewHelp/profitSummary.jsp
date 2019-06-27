<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 页面上部 -->
<jsp:include page="../my_above.jsp"></jsp:include>
<!-- 页面上部 /-->

<!-- 内容区域 -->
<div class="content-wrapper" id="app">

    <!-- 内容头部 -->
    <section class="content-header">
        <h1>
            POS机收益
            <small>收益概览</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
            <li><a href="#">POS机收益</a></li>
            <li class="active">收益概览</li>
        </ol>
    </section>
    <!-- 内容头部 /-->

    <!-- 正文区域 -->
    <section class="content">
        <!-- 统计数值 -->
        <div class="row">
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3>{{profitSummary.posnumber}}</h3>
                        <p>销售POS台数</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-bag"></i>
                    </div>
                    <a href="#" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-green">
                    <div class="inner">
                        <h3>{{profitSummary.posnumberProfit}}</h3>元
                        <p>销售POS收益</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-stats-bars"></i>
                    </div>
                    <a href="#" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-yellow">
                    <div class="inner">
                        <h3>{{profitSummary.posconsumeNumber}}</h3>
                        <p>POS刷卡单数</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-person-add"></i>
                    </div>
                    <a href="#" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-red">
                    <div class="inner">
                        <h3>{{profitSummary.posconsumeNumberProfit}}</h3>元
                        <p>POS刷卡单数收益</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-pie-graph"></i>
                    </div>
                    <a href="#" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
        </div>
        <!-- /.row -->
    </section>

</div>
<!-- 内容区域 /-->

<!-- 底部导航 -->
<jsp:include page="../footer.jsp"></jsp:include>
<!-- 底部导航 /-->

</div>

<script src="${pageContext.request.contextPath}/js/vuejs-2.5.16.js"></script>
<script src="${pageContext.request.contextPath}/js/axios-0.18.0.js"></script>
<script src="${pageContext.request.contextPath}/js/profitSummary.js"></script>

</body>

</html>