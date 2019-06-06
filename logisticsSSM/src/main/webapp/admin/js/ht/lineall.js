$(function () {

    layui.use(['layer','form', 'table','layedit','laydate', 'element'], function(){
        var table = layui.table;
        var layer = layui.layer //弹层
            , table = layui.table //表格
            ,laydate = layui.laydate
            , element = layui.element //元素操作
            ,layedit = layui.layedit
            , form = layui.form;

        //加载日期
        laydate.render({
            elem: '#date1'
        });
        laydate.render({
            elem: '#date2'
        });
        //自定义验证规则
        form.verify({
            lstart:[
                /^[\u4e00-\u9fa5]{0,}$/,
                '起始地只能输入中文哦'
            ],
            lend: [
                /^[\u4e00-\u9fa5]{0,}$/,
                '目的地只能输入中文哦'
            ],
            lweight:[
                /^([1-9][0-9]*){1,3}$/
                ,'你输入的重量只能为数字'
            ],
            trains:[
                /^[\u4e00-\u9fa5]{0,}$/,
                '铁运公司只能输入中文哦'
            ],
            voyage:[
                /^([1-9][0-9]*){1,3}$/
                ,'你输入的航程只能为数字'
            ],
            lnote: function(value){
                if(value.length < 5){
                    return '标题至少得5个字符啊';
                }
            }
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });

        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field));
            $.post("/addLine",data.field,function (data) {
                if(data>0){
                    parent.layer.msg('增加成功！', {icon: 16,time:2000,shade:0.2});
                    location.href = "/admin/linelist.jsp";
                }else{
                    layer.msg('增加失败！', {icon: 11});
                }
            });
            return false;
        });

        //第一个实例
        table.render({
            elem: '#line'
            ,height: 500
            ,url: '/htLineAll' //数据接口
            ,page: true //开启分页
            //,skin: 'line' //表格风格
            , totalRow: true//开启合计行
            ,cols: [[ //表头
                {checkbox: true, fixed: true}
                ,{field: 'lid', title: '线路ID', width:120, sort: true, fixed: 'left'}
                ,{field: 'lstart', title: '线路起始地', width:120}
                ,{field: 'lend', title: '线路终点地', width:120, sort: true}
                ,{field: 'startdate', title: '线路发车日期', width:120}
                ,{field: 'enddate', title: '线路截止日期', width: 120}
                ,{field: 'lnote', title: '备注', width: 120, sort: true}
                ,{field: 'lweight', title: '可载重量', width: 120, sort: true}
                ,{field: 'trunksize', title: '车箱大小', width: 120}
                ,{field: 'trains', title: '铁运公司', width: 120}
                ,{field: 'lway', title: '运输方式', width: 120}
                ,{field: 'voyage', title: '航程', width: 60}
                ,{field: 'train', title: '车名/班次', width: 100}
                ,{field: 'lserial', title: '路线编号', width: 100}
                ,{field: 'lstate', title: '状态', width: 100,
                    templet:function(d){
                        if(1==d.lstate){
                            return "<span style='color: blue;'>正常运营线路...</span>";
                        }else{
                            return '<span style="color: #c00;">该线路未运营...</span>';
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
                var lstart = $('#lstart').val();
                var lend = $('#lend').val();
                var startdate = $('#startdate').val();
                var enddate = $('#enddate').val();
                //alert(uname);
                // 执行重载
                table.reload('id', {
                    page : {
                        curr : 1// 重新从第 1 页开始
                    },
                    where : {//传的参数到后台
                        'lstart' : lstart,
                        'lend' : lend,
                        'startdate' : startdate,
                        'enddate' : enddate
                    }
                });
            }
        };
        // 查询按钮实现
        $('.demoTable .layui-btn').on('click', function() {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });


        table.on('tool(line)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象
            if(layEvent === 'edit') {
                //获取修改的值
                $("input[name='lstart']").val(data.lstart);
                $("input[name='lend']").val(data.lend);
                $("input[name='startdate']").val(data.startdate);
                $("input[name='enddate']").val(data.enddate);
                $("input[name='lweight']").val(data.lweight);
                $("input[name='trunksize']").val(data.trunksize);
                $("input[name='trains']").val(data.trains);
                $("input[name='voyage']").val(data.voyage);
                $("input[name='train']").val(data.train);
                $("input[name='lserial']").val(data.lserial);
                $("#lnote").val(data.lnote);
                $("#lid").val(data.lid);
                layer.open({
                    type: 1,
                    title: "修改信息",
                    area: ['620px', '530px'],
                    content: $("#lineupdate"),//引用的弹出层的页面层的方式加载修改界面表单
                    btn : [ '确定', '取消' ],
                    maxmin : true,
                    yes : function (index, layero) {
                        $.ajax({
                            type : "post",
                            url : "/updateByLid",
                            data : {
                                'lstart' : $("input[name='lstart']").val(),
                                'lend' : $("input[name='lend']").val(),
                                'startdate' : $("input[name='startdate']").val(),
                                'enddate' : $("input[name='enddate']").val(),
                                'lweight' : $("input[name='lweight']").val(),
                                'trunksize' : $("input[name='trunksize']").val(),
                                'trains' : $("input[name='trains']").val(),
                                'voyage' : $("input[name='voyage']").val(),
                                'train' : $("input[name='train']").val(),
                                'lserial' : $("input[name='lserial']").val(),
                                'lnote' : $("#lnote").val(),
                                'lway': data.lway,
                                'lid' : $("#lid").val()
                            },
                            success : function (data) {
                                if(data>0){
                                    parent.layer.msg('修改成功！', {icon: 16,time:2000,shade:0.2});
                                    // 停顿一秒后,进行刷新详情页面.
                                    setTimeout(function() {
                                        location.reload();
                                    }, 1000)
                                }
                            }
                        });
                    }
                });
            }else if(layEvent === 'update1'){//修改为一的方法
                $.post("/updateline1",{lid:data.lid},function (data) {
                    if(data>0){
                        parent.layer.msg('运营成功！', {icon: 16,time:2000,shade:0.2});
                        // 停顿一秒后,进行刷新详情页面.
                        setTimeout(function() {
                            location.reload();
                        }, 1000)
                    }
                });
            }else if(layEvent === 'update2'){//修改为二的方法
                $.post("/updateline2",{lid:data.lid},function (data) {
                    if(data>0){
                        parent.layer.msg('停运营成功！', {icon: 16,time:2000,shade:0.2});
                        // 停顿一秒后,进行刷新详情页面.
                        setTimeout(function() {
                            location.reload();
                        }, 1000)
                    }
                });
            }
        });
     });
});