$(function () {

    layui.use('layer', function(){
        var layer = layui.layer;

        //layer.msg('hello');
    });

    //登陆的方法
   $("#login").click(function () {
        //获取用户名
        var uname = $("#uname").val();
        //获取密码
        var upassword = $("#upassword").val();
        //alert(uname);
        //alert(upassword);
        $.ajax({
            type : "post",
            url : "/UserLogin",
            data : {uname:uname,upassword:upassword},
            success : function (data) {
                if(data){
                    window.location.href = "/index.jsp";
                    alert("恭喜你，登录此系统。");
                }
            },
            error:function () {
                layer.msg("很遗憾，登录失败。");
                $("#uname").val("");
                $("#upassword").val("");
            }
        });
    });
   //注册的方法
    $('#reg').unbind('click');
    $("#reg").bind('click',function () {
        //alert(new Date());
        var uname = $("#uname1").val();
        var upassword = $("#upassword1").val();
        var email = $("#email").val();
        var utel = $("#utel").val();
        $.ajax({
            type : "post",
            url : "/regUser",
            data : {uname:uname,upassword:upassword,email:email,utel:utel},
            success : function (data) {
                if(data=1){
                    //setTimeout(function(){
                        alert("恭喜你，注册成功！");
                        window.location.href = "/pages/01_register/register_4.jsp";
                    //},200);
                }
            },
            error : function () {
                layer.msg("错误了====");
            }
        });
    });


});