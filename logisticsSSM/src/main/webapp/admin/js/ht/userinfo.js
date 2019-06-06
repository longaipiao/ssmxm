$(function () {

    layui.use(['layer','form', 'table','laydate', 'element'], function(){
        var table = layui.table;
        var layer = layui.layer //弹层
            , table = layui.table //表格
            ,laydate = layui.laydate
            , element = layui.element //元素操作
            , form = layui.form;


            //加载日期
            laydate.render({
                elem: '#date'
            });


        //第一个实例
        table.render({
            elem: '#userinfo'
            ,height: 480
            ,url: '/findUser' //数据接口
            ,page: true //开启分页
            //,skin: 'line' //表格风格
            , totalRow: true //开启合计行
            ,cols: [[ //表头
                {checkbox: true, fixed: true}
                ,{field: 'uid', title: 'ID', width:100, sort: true, fixed: 'left'}
                ,{field: 'uname', title: '名称', width:100}
                ,{field: 'upassword', title: '密码', width:100, sort: true}
                ,{field: 'email', title: '邮箱', width:150}
                ,{field: 'dateofbirth', title: '注册日期', width: 150}
                ,{field: 'usex', title: '性别', width: 100, sort: true}
                ,{field: 'utel', title: '手机号码', width: 150, sort: true}
                ,{field: 'headportrait', title: '头像', width: 100}
                ,{field: 'ustate', title: '状态', width: 100,
                    templet:function(d){
                        if(1==d.ustate){
                            return "<span style='color: blue;'>使用中...</span>";
                        }else{
                            return '<span style="color: #c00;">封禁中...</span>';
                        }
                    }}
                , {//获取桌面的工具栏
                    fixed : 'right',
                    width : 165,
                    align : 'center',
                    toolbar : '#barDemo'
                }
            ]]
            ,id : 'id'//表格id
        });

        var $ = layui.$, layer = layui.layer, active = {
            getCheckData: function(){ //获取选中数据
                var checkStatus = table.checkStatus('id')
                    ,data = checkStatus.data;
                layer.alert(JSON.stringify(data));
            },
            // 模糊查询的页面重载
            reload : function() { //拿到页面每一个值
                var uname = $('#uname').val();
                //alert(uname);
                // 执行重载
               table.reload('id', {
                    page : {
                        curr : 1// 重新从第 1 页开始
                    },
                    where : {//传的参数到后台
                        'uname' : uname,
                    }
                });
            }
        };
        // 查询按钮实现
        $('.demoTable .layui-btn').on('click', function() {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

        //监听工具条
        table.on('tool(test)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象
            if(layEvent === 'edit'){ //查看
                $("#uid").val(data.uid);
                $("#uname1").val(data.uname);
                $("#upassword").val(data.upassword);

                var sex = "";
                sex += '<label class="layui-form-label">性别：</label>';
                if(data.usex == '男'){
                    sex += '<input type="radio" id="nan" name="usex" value="'+data.usex+'" title="男" checked>';
                    sex += '<input type="radio" id="nv" name="usex" value="'+data.usex+'" title="女" >';
                }else{
                    sex += '<input type="radio" id="nan" name="usex" value="'+data.usex+'" title="男" >';
                    sex += '<input type="radio" id="nv" name="usex" value="'+data.usex+'" title="女" checked>';
                }
                $("#sex").html(sex);
                //alert($("#sex").html());
                form.render();



                $("#email").val(data.email);
                $("#date").val(data.dateofbirth);
                $("#utel").val(data.utel);
                $("#headportrait").val(data.headportrait);

                layer.open({
                    //layer提供了5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                    type: 1,
                    title: "修改信息",
                    area: ['620px', '530px'],
                    content: $("#update"),//引用的弹出层的页面层的方式加载修改界面表单
                    btn : [ '确定', '取消' ],
                    maxmin : true,
                    yes :function (index,data) {
                        //alert($("#nan").val()?"男":"女");
                        //alert($("#nv").val()?"女":"男");
                       //var a =  $("#nan").val()?"男":("男")?$("#nv").val():"女";
                       //alert(a);、
                        var s = $("#nan").val()=="男"?"男":($("#nv").val()=="女")?"女":"没有";
                        alert(s);
                       /* $.ajax({
                            type : 'post',
                            url : '/updateUser',
                            data : {
                                uname : $("#uname1").val(),
                                upassword : $("#upassword").val(),
                                email : $("#email").val(),
                                dateofbirth : $("#date").val(),
                                utel : $("#utel").val(),
                                headportrait : $("#headportrait").val(),
                                uid : $("#uid").val()
                            },
                            success : function (data) {
                                alert(data);
                                // 停顿一秒后,进行刷新详情页面.
                                setTimeout(function() {
                                    location.reload();
                                }, 1 * 3000)
                            }
                        });*/
                    }
                });

            } else if(layEvent === 'update1'){ //删除
                layer.confirm('真的禁用用户吗？', function(index){
                    $.post('/updateState2',{uid:data.uid},function(res){
                        if (res>0){
                            parent.layer.msg('禁用成功！', {icon: 16,time:2000,shade:0.2});
                            location.reload();
                        }
                        else{
                            layer.msg('禁用失败',{icon:2})
                        }
                    });
                });
            } else if(layEvent === 'update2'){
                layer.confirm('解封用户', function(index){
                    $.post('/updateState1',{uid:data.uid},function(res){
                        if (res>0){
                            parent.layer.msg('解封成功！', {icon: 16,time:2000,shade:0.2});
                            location.reload();
                        }
                        else{
                            layer.msg('解封失败',{icon:2})
                        }
                    });
                });
            }
        });

    });



});