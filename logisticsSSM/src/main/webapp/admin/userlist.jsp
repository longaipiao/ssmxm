<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/3 0003
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>用户列表</title>
    <script type="text/javascript" src="/admin/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="/admin/plugins/layui/layui.js"></script>
    <link rel="stylesheet" href="/admin/plugins/layui/css/layui.css" media="all">
    <script type="text/javascript" src="/admin/js/ht/userinfo.js"></script>
</head>
<body>

<div class="demoTable">
    <label>搜索名称 ：</label>
    <div class="layui-inline">
        <input class="layui-input" type="text" name="username" id="uname" lay-verify="username" autocomplete="off">
    </div>&nbsp;&nbsp;&nbsp;
    <button class="layui-btn" data-type="reload" lay-submit="" lay-filter="*">搜索</button>
    <button class="layui-btn" data-type="getCheckData">批量删除</button>
</div>

<%--usertable数据展示--%>
<table id="userinfo" lay-filter="test"></table>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="update1">禁用</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="update2">解封</a>
</script>

    <%--用户修改的界面--%>
    <form class="layui-form" action="" id="update" style="display:none;">
        <input type="hidden" id="uid"/>
        <div class="layui-form-item">
            <label class="layui-form-label">名称：</label>
            <div class="layui-input-block">
                <input type="text" id="uname1" required lay-verify="required"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码：</label>
            <div class="layui-input-inline">
            <input type="password" id="upassword" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">邮箱：</label>
            <div class="layui-input-block">
                <input type="text" id="email" required lay-verify="required"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">入职日期：</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" id="date">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">用户电话：</label>
            <div class="layui-input-block">
                <input type="text" id="utel" required lay-verify="required"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">用户头像：</label>
            <div class="layui-input-block">
                <input type="text" id="headportrait" required lay-verify="required"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item" id="sex">


        </div>
        <%--<div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" id="updateUser" lay-submit lay-filter="formDemo">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>--%>
    </form>


</body>
</html>
