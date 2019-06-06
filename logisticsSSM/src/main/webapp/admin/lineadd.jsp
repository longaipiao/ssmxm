<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/4 0004
  Time: 18:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>线路添加</title>
</head>
<script type="text/javascript" src="/admin/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/admin/plugins/layui/layui.js"></script>
<link rel="stylesheet" href="/admin/plugins/layui/css/layui.css" media="all">
<script type="text/javascript" src="/admin/js/ht/lineall.js"></script>
<body>

<div class="layui-form-item" style="margin-top: 10px">
    <form class="layui-form" action="" id="empForm">
        <div class="layui-form-item">
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
        </div><br/>
        <div class="layui-inline">
            <label class="layui-form-label">截止日期:</label>
            <div class="layui-input-inline">
                <input type="text" name="enddate" class="layui-input" id="date2" placeholder="线路截止日期">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">可载重量:</label>
            <div class="layui-input-inline">
                <input type="text" name="lweight" lay-verify="lweight" class="layui-input" placeholder="可载重量">
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
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">备注:</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" name="lnote" lay-verify="lnote" class="layui-textarea" style="width: 300px;"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
