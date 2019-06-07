$(function (){

        layui.use(['form', 'layedit', 'laydate'], function(){
            var form = layui.form
                ,layer = layui.layer
                ,layedit = layui.layedit
                ,laydate = layui.laydate;
            //常规用法
            laydate.render({
                elem: '#pickdate'
            });
            //常规用法
            laydate.render({
                elem: '#sdate'
            });

        });






    //获取的数据
    //添加的方法
    $("#but").click(function () {
        var str = "";
        str += $("#raddress1").val();
        str += $("#raddress2").val();
        str += $("#raddress3").val();

        if($('#checkbox').is(':checked')){
            alert("选中的时候：");
            $.ajax({
                type : "POST",
                url : "/srgtest",
                dataType : 'json',
                data : {
                    sname:$("#sname").val(),
                    stel:$("#stel").val(),
                    pickdate:$("#pickdate").val(),
                    quantity:$("#quantity").val(),
                    saddress:$("#saddress").val(),
                    sdate:$("#sdate").val(),
                    goodname:$("#goodname").val(),
                    snote:$("#snote").val(),
                    rname:$("#rname").val(),
                    rtel:$("#rtel").val(),
                    remail:$("#remail").val(),
                    raddress:str,
                    gname:$("#gname").val(),
                    packaging:$("#packaging").val(),
                    number:$("#number").val(),
                    gweight:$("#gweight").val(),
                    gvolume:$("#gvolume").val(),
                    checkbox:1
                },
                success : function (data) {
                    alert(data);
                }
            });
        }else{
            alert("不选中的时候："+$("#checkbox").val());
            $.ajax({
                type : "POST",
                url : "/srgtest",
                dataType : 'json',
                data : {
                    sname:$("#sname").val(),
                    stel:$("#stel").val(),
                    pickdate:$("#pickdate").val(),
                    quantity:$("#quantity").val(),
                    saddress:$("#saddress").val(),
                    sdate:$("#sdate").val(),
                    goodname:$("#goodname").val(),
                    snote:$("#snote").val(),
                    rname:$("#rname").val(),
                    rtel:$("#rtel").val(),
                    remail:$("#remail").val(),
                    raddress:str,
                    gname:$("#gname").val(),
                    packaging:$("#packaging").val(),
                    number:$("#number").val(),
                    gweight:$("#gweight").val(),
                    gvolume:$("#gvolume").val(),
                    checkbox:0
                },
                success : function (data) {
                    alert(data);
                }
            });
        }
    });
});