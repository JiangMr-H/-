<%@ page contentType="text/html;charset=UTF-8" %>
<%--<%@ include file="/WEB-INF/views/include/taglib.jsp"%>--%>
<html>
<head>
    <title>销售订单表导入导出管理</title>
    <meta name="decorator" content="default"/>
    <script type="text/javascript">
        /* $(document).ready(function() {

        }); */
        $(document).ready(function() {
            $("#btnExport").click(function(){
                top.$.jBox.confirm("确认要导出用户数据吗？","系统提示",function(v,h,f){
                    if(v=="ok"){
                        $("#searchForm").attr("action","${ctx}/orderexcel/orderexcel/export");
                        $("#searchForm").submit();
                    }
                },{buttonsFocus:1});
                top.$('.jbox-body .jbox-icon').css('top','55px');
            });
            $("#btnImport").click(function(){
                $.jBox($("#importBox").html(), {title:"导入数据", buttons:{"关闭":true},
                    bottomText:"导入文件不能超过5M，仅允许导入“xls”或“xlsx”格式文件！"});
            });
        });
        function page(n,s){
            $("#pageNo").val(n);
            $("#pageSize").val(s);
            $("#searchForm").submit();
            return false;
        }
    </script>
</head>
<body>
<div id="importBox" class="hide">
    <form id="importForm" action="${ctx}/orderexcel/orderexcel/import" method="post" enctype="multipart/form-data"
          class="form-search" style="padding-left:20px;text-align:center;" οnsubmit="loading('正在导入，请稍等...');"><br/>
        <input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>　　
        <input id="btnImportSubmit" class="btn btn-primary" type="submit" value="   导    入   "/>
    </form>
</div>
<ul class="nav nav-tabs">
    <li class="active"><a href="${ctx}/orderexcel/orderexcel/">销售订单列表</a></li>
</ul>
<form:form id="searchForm" modelAttribute="orderexcel" action="${ctx}/orderexcel/orderexcel/" method="post" class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
    <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
    <ul class="ul-form">
        <li>
            <input id="btnImport" class="btn btn-primary" type="button" value="导入"/>
            <input id="btnExport" class="btn btn-primary" type="button" value="导出"/>
        </li>
        <li class="clearfix"></li>
    </ul>
</form:form>
<sys:message content="${message}"/>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th>日期</th>
        <th>单据编号</th>
        <th>国际单号</th>
        <th>国内单号</th>
        <th>内部单号</th>
        <th>客户单号</th>
        <th>备注</th>
        <th>产品型号</th>
        <th>库存编码</th>
        <th>数量</th>
        <th>含税单价</th>
        <th>金额</th>
        <th>币种</th>
        <th>汇率</th>
        <th>地址</th>
        <th>国家</th>
        <th>插头</th>
        <th>国际货代</th>
        <th>国内货代</th>
        <th>业务员编码</th>
        <th>业务员</th>
        <th>往来单位编码</th>
        <th>往来单位</th>
        <th>部门编码</th>
        <th>仓库编码</th>
        <!-- <th>创建时间</th> -->
        <%-- <shiro:hasPermission name="orderexcel:orderexcel:edit"><th>操作</th></shiro:hasPermission> --%>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="orderexcel">
        <tr>
            <td>
                    ${orderexcel.date}
            </td>
            <td>
                    ${orderexcel.ordernumber}
            </td>
            <td>
                    ${orderexcel.internumber}
            </td>
            <td>
                    ${orderexcel.countrynumber}
            </td>
            <td>
                    ${orderexcel.number}
            </td>
            <td>
                    ${orderexcel.customernumber}
            </td>
            <td>
                    ${orderexcel.remarks}
            </td>
            <td>
                    ${orderexcel.productnumber}
            </td>
            <td>
                    ${orderexcel.sku}
            </td>
            <td>
                    ${orderexcel.number}
            </td>
            <td>
                    ${orderexcel.taxprice}
            </td>
            <td>
                    ${orderexcel.totalprice}
            </td>
            <td>
                    ${orderexcel.currency}
            </td>
            <td>
                    ${orderexcel.exchangerate}
            </td>
            <td>
                    ${orderexcel.address}
            </td>
            <td>
                    ${orderexcel.country}
            </td>
            <td>
                    ${orderexcel.plug}
            </td>
            <td>
                    ${orderexcel.interfreightforwarder}
            </td>
            <td>
                    ${orderexcel.countryfreightforwarder}
            </td>
            <td>
                    ${orderexcel.salesmannumber}
            </td>
            <td>
                    ${orderexcel.salesman}
            </td>
            <td>
                    ${orderexcel.intercoursenumber}
            </td>
            <td>
                    ${orderexcel.intercourse}
            </td>
            <td>
                    ${orderexcel.officenumber}
            </td>
            <td>
                    ${orderexcel.warehousenumber}
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="pagination">${page}</div>
</body>
</html>