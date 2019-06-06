<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/1
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!DOCTYPE html>
<html>
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

<%--修改界面--%>
<form class="layui-form" action="" id="formTable" style="display: none">
    <div class="layui-form-item">
        <label class="layui-form-label">ID</label>
        <div class="layui-input-inline">
            <input type="text" name="eid" id="eid" required lay-verify="required"  autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-inline">
            <input type="text" name="ename" id="ename" required lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-inline">
            <input type="text" name="epassword" id="epassword" required lay-verify="password|required" placeholder="请输入密码" autocomplete="off" class="layui-input">
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
            <select name="zid" lay-verify="required" id="zw">
                <option value=""></option>
                <option value="1">站长</option>
                <option value="2">员工</option>
                <option value="3">司机</option>
            </select>
        </div>
    </div>


    <div class="layui-form-item">
        <label class="layui-form-label">性别</label>
        <div class="layui-input-block" id="xb">
            <input type="radio" name="esex"   value="男" title="男" checked="">
            <input type="radio" name="esex"   value="女" title="女">
        </div>
    </div>


    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo1" id="demo1">添加</button>
        </div>
    </div>

</form>

<%--修改界面--%>









<%----%>

<div class="demoTable layui-form">

    <div class="layui-inline">
        用户名
        <input class="layui-input" name="ename" id="uname" autocomplete="off">
    </div>

    <div class="layui-inline">
      入职时间
        <input class="layui-input" name="rzsj" id="rzsj" autocomplete="off">
    </div>

    <div class="layui-inline">
       手机号码
        <input class="layui-input" name="sjhm"  id="sjhm" autocomplete="off">
    </div>

    <div class="layui-input-inline">
       性别
        <select id="sexe" name="sexe" lay-verify="required">
            <option value="">请选择性别</option>
            <option value="男" >男</option>
            <option value="女" >女</option>
        </select>
    </div>

    <div class="layui-input-inline">
        是否在职
        <select id="zz" name="zz" lay-verify="required">
            <option value="">请选择</option>
            <option value="1">在职</option>
            <option value="2">不在职</option>
        </select>
    </div>
    <button class="layui-btn layui-btn-radius" data-type="reload">搜索</button>
</div>



<div class="demoTable">

    <button class="layui-btn" data-type="getCheckData">批量删除</button>
    <button class="layui-btn" data-type="getCheckLength">获取选中数目</button>
    <button class="layui-btn" data-type="isAll">验证是否全选</button>
    <button class="layui-btn layui-btn-radius layui-btn-danger" data-type="addEmp">增加</button>
    <button class="layui-btn" id="export">
        <i class="iconfont icon-export"></i> 导出
    </button>

</div>




<table class="layui-table"  lay-filter="demo" id="demo" >


<%--
    <thead>
    <tr>
        <th lay-data="{type:'checkbox'}"></th>
        <th lay-data="{field:'eid', width:80, sort: true,align: 'center'}">ID</th>
        <th lay-data="{field:'ename', width:130,align: 'center'}">员工姓名</th>
       <th lay-data="{field:'epassword', width:130, sort: true,align: 'center'}">员工密码</th>
        <th lay-data="{field:'esex', width:80,align: 'center'}">性别</th>
        <th lay-data="{field:'eaddress', width:160,align: 'center'}">所属地址</th>
        <th lay-data="{field:'regtime', width:160, sort: true,align: 'center'}">入职时间</th>

        <th lay-data="{field:'state', width:110,align: 'center', unresize: true}">是否在职</th>
        <th lay-data="{field:'etel', width:160, sort: true,align: 'center'}">手机号码</th>
        <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}">操作</th>
    </tr>
    </thead>--%>
</table>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>



<script src="/admin/plugins/layui/layui.js" charset="utf-8"></script>

<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use(['table','layer','jquery','layedit', 'laydate'], function(){
        var table = layui.table
            ,form = layui.form,
            layer = layui.layer
           ,layedit = layui.layedit
            ,laydate = layui.laydate;
        var $=layui.jquery;


        //日期
        laydate.render({
            elem: '#date1'
            ,trigger: 'click'
        });


        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');


/*************************************************************************************************/
        //表单提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field));
            $.ajax({
                type:"post",
                url:"/admin/updateEmp",
                dataType:"json",
                data:data.field,
                success:function(data){
                    if(data>0){
                        parent.layer.msg('修改成功！', {icon: 1,time:2000,shade:0.2});
                        layer.close("iframe");
                        location.reload();
                    }else{
                        parent.layer.msg('修改失败！', {icon: 2,time:3000,shade:0.2});
                    }
                },
                error:function(jqXHR){
                    alert("发生错误："+ jqXHR.status);
                }
            });
            return false;


        });
/*****************************************************************************************************/


        //监听表格复选框选择
        table.on('checkbox(demo)', function(obj){
            console.log(obj)
        });


        table.render({
            elem: '#demo'
            ,url:'/admin/getEmps'
            ,title: '员工数据表'
            ,totalRow: true
            ,id:'idTest'
            ,cols: [[
                 {checkbox: true, align: 'center'}
                ,{field:'eid', title:'ID', width:80, unresize: true, sort: true, totalRowText: '合计行'}
                ,{field:'ename', title:'用户名',width:80, sort: true,align: 'center'}
                ,{field:'epassword', title:'密码', width:130, sort: true,align: 'center'}
                ,{field:'esex', title:'性别', width:80,align: 'center', totalRow: true}
                ,{field:'eaddress', title:'服务地址', width:160,align: 'center', totalRow: true}
                ,{field:'regtime', title:'入职时间', width:160, sort: true,align: 'center'}
                ,{field:'state', title:'是否在职', width:110,align: 'center', unresize: true, totalRow: true}
                ,{field:'rname', title:'职位', width:110,align: 'center', unresize: true, totalRow: true}
                ,{field:'etel', title:'手机号码', width:160, sort: true,align: 'center', totalRow: true}
                ,{fixed: 'right',title:'操作', width:178, align:'center', toolbar: '#barDemo'}
            ]]
            ,page: true,
            done: function (res, curr, count) {
                exportData=res.data;
            }
        });

        //监听工具条
        table.on('tool(demo)', function(obj){
            var data = obj.data;
            if(obj.event === 'detail'){
                layer.msg('ID：'+ data.id + ' 的查看操作');
            } else if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    $.ajax({
                        type:"post",
                        url:"/admin/updateEmp",
                        dataType:"json",
                        data:{
                            elevel:data.eid
                        },
                        success:function(data){
                          alert(data);
                          obj.del();
                          layer.close(index);
                    },
                    error:function(jqXHR){
                        alert("发生错误："+ jqXHR.status);
                    }
                });

                });
            } else if(obj.event === 'edit'){
                //开始修改
                layer.alert('编辑行：<br>'+ JSON.stringify(data))
                //开始给表格赋值
                $("#eid").val(data.eid);
                $("#ename").val(data.ename);
                $("#epassword").val(data.epassword);
                $("#etel").val(data.etel);
                $("#eaddress").val(data.eaddress);
                $("#date1").val(data.regtime);
               /* if(data.esex='男') {
                    $("input[name=esex][value='男']").attr("checked", data.esex == '男' ? true : false);
                }
                if(data.esex='女') {
                    $("input[name=esex][value='女']").attr("checked", data.esex == '女' ? true : false);
                }

                if(data.rname=='超级管理员'){
                    $('select[id="zw"]').next().find('.layui-select-title input').click();
                }
                if(data.rname=='员工'){
                    $("#js").selectIndex =3;
                }
                if(data.rname=='司机'){
                    $("#js").selectIndex =4;
                }*/
            /* form.val("formTable", {
                    "ename":data.ename  // "name": "value"
                    /!*,"esex": "女"
                    ,"auth": 3
                    ,"check[write]": true
                    ,"open": false
                    ,"desc": "我爱layui"*!
                })*/


                layer.open({
                    type: 1,
                    title: "修改员工",
                    area: ['500px', '530px'],
                    content: $("#formTable"),//引用的弹出层的页面层的方式加载修改界面表单
                    maxmin : true,
                    success: function(layero, index){
                        alert("成功");
                        //layer.close();
                        //location.reload();
                        /*//修改成功后调用的函数
                        alert(data);
                        // 停顿一秒后,进行刷新详情页面.
                        setTimeout(function() {
                            location.reload();
                        }, 1 * 3000)*/

                    }
                });

            }

        });





        var $ = layui.$,layer = parent.layer,
        layer = layui.layer,active = {
            getCheckData: function(){ //获取选中数据
                var checkStatus = table.checkStatus('idTest')
                    ,data = checkStatus.data;
                //layer.alert(JSON.stringify(data));
                if(data.length==0){
                    parent.layer.msg('请先选择要删除的数据行！', {icon: 2});
                    return ;
                }
                var ids="";
                for(var i=0;i<data.length;i++){
                    ids += checkStatus.data[i].eid+",";
                }
                alert(ids);
                parent.layer.msg('删除中...', {icon: 16,shade: 0.3,time:5000});
               $.ajax({
                    type:"post",
                    url:"/admin/deleteEmps",
                    dataType:"json",
                    data:{
                        eid:ids
                    },
                    success:function(data){
                        layer.closeAll('loading');
                        if(data>0){
                            parent.layer.msg('删除成功！', {icon: 1,time:2000,shade:0.2});
                            location.reload();
                        }else{
                            parent.layer.msg('删除失败！', {icon: 2,time:3000,shade:0.2});
                        }

                    },
                    error:function(jqXHR){
                        alert("发生错误："+ jqXHR.status);
                    }
                });

            }
            ,getCheckLength: function(){ //获取选中数目
                var checkStatus = table.checkStatus('idTest')
                    ,data = checkStatus.data;
                layer.msg('选中了：'+ data.length + ' 个');
            }
            ,isAll: function(){ //验证是否全选
                var checkStatus = table.checkStatus('idTest');
                layer.msg(checkStatus.isAll ? '全选': '未全选')
            },addEmp:function () {//增加员工按钮
               layer.open({
                   type: 1,
                   title: "增加员工",
                   area: ['500px', '530px'],
                   content:'/admin/empadd.jsp' ,//引用的弹出层的页面层的方式加载修改界面表单
                   maxmin : true
                });
            }, reload : function() {//加载表单
                var uname = $('#uname').val();
                //alert(uname);
                // 执行重载
                table.reload('idTest', {
                    page : {
                        curr : 1// 重新从第 1 页开始
                    },
                    where : {//传的参数到后台
                        'ename' : uname,
                        'regetime':$("#rzsj").val(),
                        'etel':$("#sjhm").val(),
                        'esex':$("#sexe").val(),
                        'state':$("#zz").val()
                    }
                });
            }
        };



        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
    });
</script>

</body>
</html>