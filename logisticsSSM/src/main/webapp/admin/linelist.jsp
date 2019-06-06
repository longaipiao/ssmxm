<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/4 0004
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>线路列表</title>
    <script type="text/javascript" src="/admin/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="/admin/plugins/layui/layui.js"></script>
    <link rel="stylesheet" href="/admin/plugins/layui/css/layui.css" media="all">
    <script type="text/javascript" src="/admin/js/ht/lineall.js"></script>
</head>
<body>
<div class="demoTable">
    <label style="color: red;">搜索 起始地 ：</label>
    <div class="layui-inline">
        <input placeholder="请输入起始地" class="layui-input" type="text" name="username" id="lstart" lay-verify="username" autocomplete="off">
    </div>&nbsp;&nbsp;&nbsp;
    <label style="color: red;">至  &nbsp;&nbsp;------&nbsp;&nbsp;&nbsp;&nbsp;目的地 ：</label>
    <div class="layui-inline">
        <input placeholder="请输入目的地" class="layui-input" type="text" name="username" id="lend" lay-verify="username" autocomplete="off">
    </div>&nbsp;&nbsp;&nbsp;<br/><br/>
    <label style="color: red;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发车日期 ：</label>
    <div class="layui-inline">
        <input placeholder="请输入发车日期" class="layui-input" type="text" name="username" id="startdate" lay-verify="username" autocomplete="off">
    </div>&nbsp;&nbsp;&nbsp;
    <label style="color: red;">至  &nbsp;------&nbsp;&nbsp;截止日期 ：</label>
    <div class="layui-inline">
        <input placeholder="请输入截止日期" class="layui-input" type="text" name="username" id="enddate" lay-verify="username" autocomplete="off">
    </div>&nbsp;&nbsp;&nbsp;
    <button class="layui-btn" data-type="reload" lay-submit="" lay-filter="*">搜索</button>
    <button class="layui-btn" data-type="getCheckData">批量删除</button>
</div>
<br/>
<%--usertable数据展示--%>
<table id="line" lay-filter="line">

</table>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="update1">运营</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="update2">停运</a>
</script>

<form class="layui-form" action="" id="lineupdate" style="display:none;">
    <div class="layui-form-item">
        <input type="hidden" id="lid"/>
        <label class="layui-form-label">起始地:</label>
        <div class="layui-input-inline">
            <input type="text" name="lstart" lay-verify="lstart" class="layui-input"placeholder="起始地">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">目的地:</label>
        <div class="layui-input-inline">
            <input type="text" name="lend" lay-verify="lend" class="layui-input" placeholder="目的地">
        </div>
    </div>
    <div class="layui-inline">
        <label class="layui-form-label">发车日期:</label>
        <div class="layui-input-inline">
            <input type="text" name="startdate" class="layui-input" id="date1" placeholder="线路发车日期">
        </div>
    </div><br/><br/>
    <div class="layui-inline">
        <label class="layui-form-label">截止日期:</label>
        <div class="layui-input-inline">
            <input type="text" name="enddate" class="layui-input" id="date2" placeholder="线路截止日期">
        </div>
    </div><br/><br/>
    <div class="layui-form-item">
        <label class="layui-form-label">可载重量:</label>
        <div class="layui-input-inline">
            <input type="text" name="lweight" lay-verify="lweight" class="layui-input" placeholder="可载重量">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">车箱大小:</label>
        <div class="layui-input-inline">
            <input type="text" name="trunksize" lay-verify="trunksize" class="layui-input" placeholder="车箱大小">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">铁运公司:</label>
        <div class="layui-input-inline">
            <input type="text" name="trains" lay-verify="trains" class="layui-input" placeholder="铁运公司">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">航程:</label>
        <div class="layui-input-inline">
            <input type="text" name="voyage" lay-verify="voyage" class="layui-input" placeholder="航程(多少天到站)">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">车名/班次:</label>
        <div class="layui-input-inline">
            <input type="text" name="train" lay-verify="train" class="layui-input" placeholder="车名/班次">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">路线编号:</label>
        <div class="layui-input-inline">
            <input type="text" name="lserial" lay-verify="lserial" class="layui-input" placeholder="路线编号">
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">备注:</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" id="lnote" name="lnote" lay-verify="lnote" class="layui-textarea" style="width: 300px;"></textarea>
        </div>
    </div>
    <%--<div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo2">修改</button>
        </div>
    </div>--%>
</form>


</body>
</html>
