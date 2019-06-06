layui.use(['tree','form','table','jquery'], function(){
    var table = layui.table
        ,form = layui.form
        ,tree = layui.tree
        ,layer = layui.layer
        ,$=layui.jquery
        //模拟数据
        ,data = [{
            label: '一级1'
            ,id: 1
            ,children: [{
                label: '二级1-1 可允许跳转'
                ,id: 3
                ,href: 'https://www.layui.com/'
                ,children: [{
                    label: '三级1-1-3'
                    ,id: 23
                    ,children: [{
                        label: '四级1-1-3-1'
                        ,id: 24
                        ,children: [{
                            label: '五级1-1-3-1-1'
                            ,id: 30
                        },{
                            label: '五级1-1-3-1-2'
                            ,id: 31
                        }]
                    }]
                },{
                    label: '三级1-1-1'
                    ,id: 7
                    ,children: [{
                        label: '四级1-1-1-1 可允许跳转'
                        ,id: 15
                        ,href: 'https://www.layui.com/doc/'
                    }]
                },{
                    label: '三级1-1-2'
                    ,id: 8
                    ,children: [{
                        label: '四级1-1-2-1'
                        ,id: 32
                    }]
                }]
            },{
                label: '二级1-2'
                ,id: 4
                ,children: [{
                    label: '三级1-2-1'
                    ,id: 9
                    ,disabled: true
                },{
                    label: '三级1-2-2'
                    ,id: 10
                }]
            },{
                label: '二级1-3'
                ,id: 20
                ,children: [{
                    label: '三级1-3-1'
                    ,id: 21
                },{
                    label: '三级1-3-2'
                    ,id: 22
                }]
            }]
        },{
            label: '一级2'
            ,id: 2
            ,children: [{
                label: '二级2-1'
                ,id: 5
                ,children: [{
                    label: '三级2-1-1'
                    ,id: 11
                },{
                    label: '三级2-1-2'
                    ,id: 12
                }]
            },{
                label: '二级2-2'
                ,id: 6
                ,children: [{
                    label: '三级2-2-1'
                    ,id: 13
                },{
                    label: '三级2-2-2'
                    ,id: 14
                    ,disabled: true
                }]
            }]
        },{
            label: '一级3'
            ,id: 16
            ,children: [{
                label: '二级3-1'
                ,id: 17
                ,fixed: true
                ,children: [{
                    label: '三级3-1-1'
                    ,id: 18
                },{
                    label: '三级3-1-2'
                    ,id: 19
                }]
            },{
                label: '二级3-2'
                ,id: 27
                ,children: [{
                    label: '三级3-2-1'
                    ,id: 28
                },{
                    label: '三级3-2-2'
                    ,id: 29
                }]
            }]
        }];

    //监听表格复选框选择
    table.on('checkbox(demo)', function(obj){
        console.log(obj)
    });



    table.render({
        elem: '#demo',
        id:'idTest'
        ,weight:'1000'
        ,url:'/admin/getRoles'
        ,title: '用户数据表'
        ,id:'idTest'
        ,cols: [[
            {type: 'checkbox', fixed: 'left'}
            ,{field:'rid', title:'ID', width:300, fixed: 'left', unresize: true, sort: true}
            ,{field:'rname', title:'用户名', width:800}
            ,{fixed: 'right',title:'操作', toolbar: '#barDemo', width:300}
        ]]
        ,page: true
    });


    /*************************************************************************************************/
    //表单提交
    form.on('submit(demo1)', function(data){
        layer.alert(JSON.stringify(data.field));
        $.ajax({
            type:"post",
            url:"/admin/addRrole",
            dataType:"json",
            data:data.field,
            success:function(data){
                if(data>0){
                    parent.layer.msg('增加成功！', {icon: 1,time:2000,shade:0.2});
                    layer.close("iframe");
                    location.reload();
                }else{
                    parent.layer.msg('增加失败！', {icon: 2,time:3000,shade:0.2});
                }
            },
            error:function(jqXHR){
                alert("发生错误："+ jqXHR.status);
            }
        });
        return false;


    });
    /*****************************************************************************************************/





    tree.render({
        elem: '#rtree'
        ,data:data
        ,showLine: false  //是否开启连接线
    });


    var h;

    //监听工具条
    table.on('tool(demo)', function(obj){
        var data = obj.data;
        if(obj.event === 'detail'){
            layer.msg('ID：'+ data.id + ' 的查看操作');
        } else if(obj.event === 'del'){
            layer.confirm('真的删除行么', function(index){//删除角色
                $.ajax({
                    type:"post",
                    url:"/admin/delRole",
                    dataType:"json",
                    data:data,
                    success:function(data){
                        if(data>0){
                            parent.layer.msg('删除成功！', {icon: 1,time:2000,shade:0.2});
                            obj.del();
                            layer.close(index);
                            location.reload();
                        }else{
                            parent.layer.msg('删除失败！', {icon: 2,time:3000,shade:0.2});
                            layer.close(index);
                        }
                    },
                    error:function(jqXHR){
                        alert("发生错误："+ jqXHR.status);
                    }
                });

            });
        } else if(obj.event === 'edit'){
            layer.alert('编辑行：<br>'+ JSON.stringify(data))
            /**开始编辑*********************************************************/
            layer.open({
                type: 1,
                title: "分配菜单",
                area: ['500px', '530px'],
                content: $("#formTable2"),//引用的弹出层的页面层的方式加载修改界面表单
                maxmin : true,
                success: function(layero, index){
                    //开始调用ajax
                    $.ajax({
                        type:"post",
                        url:"/admin/FpRole",
                        dataType:"json",
                        data:data,
                        success:function(data){
                        var  t=JSON.stringify(data);
                         // $.each(t,function (i,obj) {
                             /* h = [{
                                  label:'haha'
                                  ,id:'1'
                                  ,children: [{
                                      label: '南昌'
                                      ,id: 1000
                                      ,children: [{
                                          label: '青山湖区'
                                          ,id: 10001
                                      }]
                                  }]
                              }]*/
                         // });

                        },
                        error:function(jqXHR){
                            alert("发生错误："+ jqXHR.status);
                        }
                    });
                }
            });






        }
    });

    var $ = layui.$, active = {
        getCheckData: function(){ //获取选中数据
            var checkStatus = table.checkStatus('idTest')
                ,data = checkStatus.data;
            layer.alert(JSON.stringify(data));
        }
        ,getCheckLength: function(){ //获取选中数目
            var checkStatus = table.checkStatus('idTest')
                ,data = checkStatus.data;
            layer.msg('选中了：'+ data.length + ' 个');
        }
        ,isAll: function(){ //验证是否全选
            var checkStatus = table.checkStatus('idTest');
            layer.msg(checkStatus.isAll ? '全选': '未全选')
        },addEmp:function () {//开始增加角色
            layer.open({
                type: 1,
                title: "增加角色",
                area: ['500px', '250px'],
                content: $("#formTable"),//引用的弹出层的页面层的方式加载修改界面表单
                maxmin : true

            });
        }
    };

    $('.demoTable .layui-btn').on('click', function(){
        var type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });
});