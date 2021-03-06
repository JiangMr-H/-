<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <title>通讯录</title>
    <%--<meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">--%>


    <!-- Tell the browser to be responsive to screen width -->
    <meta
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
            name="viewport">

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>


    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/morris/morris.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/select2/select2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <jsp:include page="aside.jsp"></jsp:include>
    <!-- 导航侧栏 /-->
    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                用户管理
                <small>用户列表</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/index.jsp"><i
                        class="fa fa-dashboard"></i> 首页</a></li>
                <li><a
                        href="#">用户管理</a></li>

                <li class="active">用户列表</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <!-- .box-body -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">列表</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">
                        <!--工具栏-->
                        <form action="${pageContext.request.contextPath}/user/findUserAll.do" method="post">
                            <div class="pull-right">
                                <div class="form-group form-inline">
                                    <div class="btn-group">
                                        <button type="submit" class="btn btn-default queryUserInfo" title="刷新"
                                                data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">
                                            <i class="fa fa-file-o"></i> 刷新
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="pull-left text-center ">

                                <div style="width: 80px;margin-top: 5px;float: left;margin-left: 30px">用户账号：</div>

                                <input type="text" class="form-control" name="userID" id="userID"
                                       placeholder="用户账号" style="width: 150px; float: left;margin-right: 30px" value="">
                            </div>
                        </form>

                        <div class="pull-right">
                            <div class="form-group form-inline">
                                <div class="btn-group">

                                    <button type="button" class="btn btn-primary" title="批量导入" data-toggle="modal"
                                            data-target="#exampleModal2" data-whatever="@mdo">
                                        <i class="fa fa-address-card"></i> 批量导入
                                    </button>
                                </div>
                            </div>
                        </div>

                        <div class="pull-right">
                            <div class="form-group form-inline">
                                <div class="btn-group">

                                    <button type="button" class="btn btn-primary" title="导入" data-toggle="modal"
                                            data-target="#exampleModal" data-whatever="@mdo">
                                        <i class="fa fa-address-card"></i> 导入
                                    </button>
                                </div>
                            </div>
                        </div>

                        <div id="exampleModal" class="modal fade" tabindex="-1" role="dialog"
                             aria-labelledby="gridSystemModalLabel">
                            <div class="modal-dialog" role="document">
                                <form action="${pageContext.request.contextPath}/user/save.do" method="post">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="gridSystemModalLabel">单个录入</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div style="width: 80px;margin-top: 5px;float: left;margin-left: 30px">
                                                用户账号：
                                            </div>

                                            <input type="text" class="form-control" name="username"
                                                   placeholder="用户账号"
                                                   style="width: 150px; float: left;margin-right: 30px"
                                                   value="">

                                            <div style="width: 50px;margin-top: 5px;margin-left: 30px; float: left">
                                                密码：
                                            </div>
                                            <input type="text" class="form-control " name="password"
                                                   placeholder="密码" style="width: 150px; float: left" value="">
                                            <br/>

                                            <%--  <div class="form-group" style="margin-left: 35px;margin-top: 45px">
                                                  <label>
                                                      <input type="checkbox" name="statusString" class="minimal" checked> 开启
                                                  </label>
                                                  <label style="padding-left: 35px">
                                                      <input type="checkbox" name="statusString" class="minimal">  关闭
                                                  </label>

                                              </div>--%>

                                        </div>
                                        <br/>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                            </button>
                                            <button type="submit" class="btn btn-primary">保存</button>
                                        </div>
                                    </div><!-- /.modal-content -->
                                </form>
                            </div><!-- /.modal-dialog -->
                        </div><!-- /.modal -->

                        <div id="exampleModal2" class="modal fade" tabindex="-1" role="dialog"
                             aria-labelledby="gridSystemModalLabel">
                            <div class="modal-dialog" role="document">

                                <form action="${pageContext.request.contextPath}/user/insertUser.do"
                                      method="post" enctype="multipart/form-data">

                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="gridSystemModalLabel2">请选择文件:</h4>
                                        </div>
                                        <input type="file" name="file"><br/>
                                        <br/>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                            </button>
                                            <button type="submit" class="btn btn-primary">录入</button>
                                        </div>

                                    </div><!-- /.modal-content -->



                                </form>
                            </div><!-- /.modal-dialog -->
                        </div><!-- /.modal -->

                        <!--工具栏/-->

                        <!--数据列表-->
                        <table id="dataList"
                               class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="sorting_desc text-center sorting">用户账号</th>
                                <th class="sorting_asc sorting_asc_disabled text-center sorting">用户密码</th>
                                <th class="sorting_asc text-center sorting">状态</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${pageInfo.list}" var="user">
                                <tr>
                                    <td class="text-center">${user.username }</td>
                                    <td class="text-center">${user.password }</td>
                                    <td class="text-center">${user.statusString }</td>
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
                            总共${pageInfo.pages} 页，共${pageInfo.total}条数据。 每页
                            <select class="form-control" id="changePageSize" onchange="changePageSize()">
                                <option>15</option>
                                <option>20</option>
                                <option>25</option>
                                <option>30</option>
                                <option>35</option>
                            </select> 条
                        </div>
                    </div>


                    <div class="box-tools pull-right">
                        <ul class="pagination">
                            <li>
                                <a href="${pageContext.request.contextPath}/user/findUserAll.do?page=1&size=${pageInfo.pageSize}"
                                   aria-label="Previous">首页</a></li>
                            <li>
                                <a href="${pageContext.request.contextPath}/user/findUserAll.do?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">上一页</a>
                            </li>
                            <c:forEach begin="${pageInfo.pageNum}" end="${pageInfo.pageNum}" var="pageNum">
                                <li>
                                    <a href="${pageContext.request.contextPath}/user/findUserAll.do?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a>
                                </li>
                            </c:forEach>
                            <li>
                                <a href="${pageContext.request.contextPath}/user/findUserAll.do?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">下一页</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/user/findUserAll.do?page=${pageInfo.pages}&size=${pageInfo.pageSize}"
                                   aria-label="Next">尾页</a></li>
                        </ul>
                    </div>


                    <%--<div class="box-tools pull-right">
                        <ul class="pagination">
                            <li>
                                <a href="${pageContext.request.contextPath}/user/findUserAll.do?page=1&size=${pageInfo.pageSize}"
                                   aria-label="Previous">首页</a></li>
                            <li>
                                <a href="${pageContext.request.contextPath}/user/findUserAll.do?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">上一页</a>
                            </li>
                            <c:forEach begin="${pageInfo.pageNum}" end="${pageInfo.pageNum}" var="pageNum">
                                <li>
                                    <a href="${pageContext.request.contextPath}/user/findUserAll.do?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a>
                                </li>
                            </c:forEach>
                            <li>
                                <a href="${pageContext.request.contextPath}/user/findUserAll.do?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">下一页</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/user/findUserAll.do?page=${pageInfo.pages}&size=${pageInfo.pageSize}"
                                   aria-label="Next">尾页</a></li>
                        </ul>
                    </div>--%>

                </div>
                <!-- /.box-footer-->


            </div>

        </section>
    </div>
    <!-- 正文区域 /-->
    <!-- 底部侧栏 -->
    <jsp:include page="foot.jsp"></jsp:include>
    <!-- 底部侧栏 /-->

</div>
<script
        src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script>
    function changePageSize() {
        //获取下拉框的值
        var pageSize = $("#changePageSize").val();
        //向服务器发送请求，改变没页显示条数
        location.href = "${pageContext.request.contextPath}/user/findUserAll.do?page=1&size="
            + pageSize;
    }

    <%--function queryUserInfo(){--%>
    <%--$.ajax({--%>
    <%--type:"post",--%>
    <%--url:"${pageContext.request.contextPath}/product/findByCondition.do",--%>
    <%--data:'{"id":"1","name":"嘿嘿","price":"10000"}',--%>
    <%--contentType:"application/json",--%>
    <%--success:function (data) {--%>
    <%--alert(data);--%>
    <%--},--%>
    <%--error:function (data) {--%>
    <%--alert("No"+data.msg);--%>
    <%--}--%>

    <%--});--%>







    <%--/*/!* /!* /!*  $.ajax({
                <%--type:"post",--%>
    <%--dataType:"application/jsonp;charset=utf-8",--%>
    <%--data:{'userID':$("#userID").val(),'username':$("#username").val(),'userPost':$("#userPost").val(),'userWork':$("#userWork").val()},--%>
    <%--url:"${pageContext.request.contextPath}/product/findByCondition.do",--%>
    <%--success:function (data) {--%>
    <%--alert(data);--%>
    <%--},--%>
    <%--error:function (data) {--%>
    <%--alert("No"+data.msg);--%>
    <%--}--%>

    <%--});*!/!*!/!*!/*/--%>
    }


    $(document).ready(function () {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
    });

    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    $(document).ready(function () {

        // 激活导航位置
        setSidebarActive("admin-datalist");

        // 列表按钮
        $("#dataList td input[type='checkbox']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });
        // 全选操作
        $("#selall").click(function () {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList td input[type='checkbox']").iCheck("check");
            }
            $(this).data("clicks", !clicks);
        });
    });
</script>
</body>

</html>