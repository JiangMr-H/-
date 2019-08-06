<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

 <%-- <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>--%>


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
				通讯录 <small>通讯录列表</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/index.jsp"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a
						href="#">系统管理</a></li>

				<li class="active">通讯录管理</li>
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
							<form action="${pageContext.request.contextPath}/AddressBook/findByCondition.do" method="post">
							<div class="pull-right">
								<div class="form-group form-inline">
									<div class="btn-group">
										<button type="submit"  class="btn btn-default queryUserInfo" title="查询" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">
											<i class="fa fa-file-o"></i> 查询
										</button>

										<button type="button"  class="btn btn-default" title="刷新">
											<i class="fa fa-refresh"></i> 刷新
										</button>
									</div>
								</div>
							</div>
							<div class="pull-left text-center ">

									<div style="width: 80px;margin-top: 5px;float: left;margin-left: 30px">员工编号：</div>

										<input type="text" class="form-control"  name="userID" id="userID"
											   placeholder="员工编号" style="width: 150px; float: left;margin-right: 30px" value="">

									<div style="width: 50px;margin-top: 5px;  ;margin-left: 30px; float: left">姓名：</div>
										<input type="text" class="form-control " name="username" id="username"
											   placeholder="姓名" style="width: 150px; float: left" value="">

									<div style="width: 50px;margin-top: 5px;float:left; margin-left: 50px">岗位：</div>

										<input type="text" class="form-control " name="userPost" id="userPost"
											   placeholder="岗位" style="width: 150px;float: left" value="">

									<div style="width: 80px;margin-top: 5px;float: left;margin-left: 50px">所属科室：</div>

										<input type="text" class="form-control " name="userWork" id="userWork"
											   placeholder="所属科室" style="width: 150px;float: left;margin-right: 30px" value="">
							</div>
							</form>

							<!--工具栏/-->

							<!--数据列表-->
							<table id="dataList"
								class="table table-bordered table-striped table-hover dataTable">
								<thead>
									<tr>
										<th class="sorting_desc text-center sorting">员工编号</th>
										<th class="sorting_asc sorting_asc_disabled text-center sorting">姓名</th>
										<th class="sorting_desc sorting_desc_disabled text-center sorting">单位</th>
										<th class="sorting text-center sorting">性别</th>
										<th class="text-center sorting">岗位</th>
										<th class="sorting text-center sorting">手机号码</th>
										<th class="text-center sorting">工资体系</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${pageInfo.list}" var="AddressBook" >
										<tr>
											<td class="text-center">${AddressBook.userId }</td>
											<td class="text-center">${AddressBook.username }</td>
											<td class="text-center">${AddressBook.monad }</td>
											<td class="text-center">${AddressBook.sex }</td>
											<td class="text-center">${AddressBook.post }</td>
											<td class="text-center">${AddressBook.phone }</td>
											<td class="text-center">${AddressBook.wageSystem }</td>
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
								<li><a href="${pageContext.request.contextPath}/AddressBook/findAll.do?page=1&size=${pageInfo.pageSize}" aria-label="Previous">首页</a></li>
								<li><a href="${pageContext.request.contextPath}/AddressBook/findAll.do?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">上一页</a></li>
								<c:forEach begin="${pageInfo.pageNum}" end="${pageInfo.pageNum}" var="pageNum">
									<li><a href="${pageContext.request.contextPath}/AddressBook/findAll.do?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a></li>
								</c:forEach>
								<li><a href="${pageContext.request.contextPath}/AddressBook/findAll.do?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">下一页</a></li>
								<li><a href="${pageContext.request.contextPath}/AddressBook/findAll.do?page=${pageInfo.pages}&size=${pageInfo.pageSize}" aria-label="Next">尾页</a></li>
							</ul>
						</div>

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
            location.href = "${pageContext.request.contextPath}/AddressBook/findAll.do?page=1&size="
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



		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

			// WYSIHTML5编辑器
			$(".textarea").wysihtml5({
				locale : 'zh-CN'
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

		$(document).ready(function() {

			// 激活导航位置
			setSidebarActive("admin-datalist");

			// 列表按钮 
			$("#dataList td input[type='checkbox']").iCheck({
				checkboxClass : 'icheckbox_square-blue',
				increaseArea : '20%'
			});
			// 全选操作 
			$("#selall").click(function() {
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