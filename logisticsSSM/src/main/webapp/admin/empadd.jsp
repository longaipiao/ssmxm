<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/2
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <meta charset="utf-8">
        <title>layui</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="/admin/plugins/layui/css/layui.css"  media="all">
        <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
    </head>
<body>


<!-- 示例-970 -->
<ins class="adsbygoogle" style="display:inline-block;width:970px;height:90px" data-ad-client="ca-pub-6111334333458862" data-ad-slot="3820120620"></ins>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>添加员工</legend>
</fieldset>

<form class="layui-form" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-inline">
            <input type="text" name="ename" id="ename" required lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-inline">
            <input type="password" name="epassword" id="epassword" required lay-verify="password|required" placeholder="请输入密码" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">手机号</label>
            <div class="layui-input-inline">
                <input type="tel" id="etel" name="etel" lay-verify="required|phone" placeholder="请输入手机号码" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">服务地址</label>
        <div class="layui-input-inline">
            <input type="text" name="eaddress" id="eaddress" lay-verify="required" placeholder="请输入地址" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">日期选择</label>
            <div class="layui-input-block">
                <input type="text" name="regtime"  id="date1" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">职位</label>
        <div class="layui-input-block">
            <select name="zid" lay-verify="required">
                <option value=""></option>
                <option value="1">站长</option>
                <option value="2">员工</option>
                <option value="3">司机</option>
            </select>
        </div>
    </div>


    <div class="layui-form-item">
        <label class="layui-form-label">性别</label>
        <div class="layui-input-block">
            <input type="radio" name="esex" value="男" title="男" checked="">
            <input type="radio" name="esex" value="女" title="女">
        </div>
    </div>


    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo1" id="demo1">添加</button>
        </div>
    </div>

</form>





<script src="/admin/plugins/layui/layui.js" charset="utf-8"></script>
<script src="/admin/js/jquery-3.3.1.min.js" charset="utf-8"></script>
<script type="text/javascript" src="/admin/js/distpicker.data.js"></script>
<script type="text/javascript" src="/admin/js/distpicker.js"></script>
<script type="text/javascript" src="/admin/js/main.js"></script>

<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>



    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date1'
            ,trigger: 'click'
        });


        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');



        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field));
         $.post('/admin/addemp',data.field,function(res){
             if (res==1){
                 layer.msg('添加成功', {icon: 5});
             }
             if(res==2){
                 layer.msg('添加失败,用户名已存在',{icon:2});
             }
             else{
                 layer.msg('添加失败',{icon:2})
             }
            });

            return false;


        });



    });
</script>

</body>
</html>