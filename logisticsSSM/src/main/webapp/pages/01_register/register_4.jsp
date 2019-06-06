<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/29 0029
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>完成</title>
    <link href="../../css/common.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/verify.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/reset.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="../../js/jquery.1.7.2.min.js"></script>
    <script type="text/javascript" src="../../js/customer2.js"></script>
    <script type="text/javascript" src="../../js/verify.js"></script>
</head>

<body class="bg_f4">
<div class="bg_fff">
    <div class="page_con">
        <div class="bg_top">
            <ul class="func_top">
                <li class="mL24"><a href="#">注册</a></li>
                <li><a class="btnB" href="#" data-dialog="dialog1">登录</a></li>
                <li class="lang_width">
                    <div class="language">
                        <div class="lang clear"> Language <span class="tri"></span> <span class="globe"></span>
                            <div class="flag">
                                <ul>
                                    <li><a href="#"><i class="chs"></i>简体中文</a></li>
                                    <li><a href="#"><i class="hk"></i>繁體中文(香港)</a></li>
                                    <li><a href="#"><i class="us"></i>English(United States)</a></li>
                                    <li><a href="#"><i class="en_hk"></i>English(Hong Kong)</a></li>
                                    <li><a href="#"><i class="tw"></i>繁體中文(台湾)</a></li>
                                    <li><a href="#"><i class="korean"></i>한국어</a></li>
                                    <li><a href="#"><i class="japanese"></i>日本語</a></li>
                                    <li><a href="#"><i class="singapore"></i>English(Singapore)</a></li>
                                    <li><a href="#"><i class="australia"></i>English(Australia)</a></li>
                                    <li><a href="#"><i class="deutsch"></i>Deutsch</a></li>
                                    <li><a href="#"><i class="franc"></i>Français</a></li>
                                    <li><a href="#"><i class="spaish"></i>Español</a></li>
                                    <li><a href="#"><i class="italian"></i>Italiano</a></li>
                                    <li><a href="#"><i class="russian"></i>Русский</a></li>
                                    <li><a href="#"><i class="indonesian"></i>Bahasa Indonesia</a></li>
                                    <li><a href="#"><i class="malay"></i>Bahasa Malaysia</a></li>
                                    <li><a href="#"><i class="thai"></i>ภาษาไทย</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="phone">1666666888</li>
            </ul>
        </div>
    </div>
</div>
<div class="bg_header">
    <div class="page_con">
        <h1 class="logo_text mRight_0"><a href="../../index.jsp"><img alt="" width="100px" height="" src="../../images/logo_text.png"/></a></h1>
        <h2 class="h2_head">用户注册</h2>
        <a href="../../index.jsp">
            <h1 class="logo_icon"></h1>
        </a> </div>
</div>
<div class="content">
    <ul class="step_reg">
        <li class="done"><i>1</i>创建账号</li>
        <li class="step_tri"></li>
        <li class="current"><i>2</i>完成</li>
    </ul>
    <div class="bg_register">
        <div class="ok_reg"> <i></i> 恭喜您，注册成功
            <p>5秒后，页面自动跳转之前页面，也可以<a href="../../index.jsp">点此继续</a></p>
        </div>
    </div>
    <div class="right_suspension">
        <ul>
            <li><a href="../../index.jsp">
                <div class="sidebox"><i class="rs_1"></i>返回首页</div>
            </a></li>
            <li><a href="#">
                <div class="sidebox"><i class="rs_2"></i>1-666-888</div>
            </a></li>
            <li><a href="#" >
                <div class="sidebox"><i class="rs_3"></i>需要帮助吗？</div>
            </a></li>
            <li><a href="#" >
                <div class="sidebox sidebox_wx"><i class="rs_4"></i><img src="../../images/qrcode.png" alt=""/></div>
            </a></li>
            <li><a href="#" >
                <div class="sidebox"><i class="rs_5"></i>在线客服</div>
            </a></li>
            <li style="border:none;"><a href="javascript:goTop();" class="sidetop"><i class="rs_6"></i></a></li>
        </ul>
    </div>
</div>
<div class="wrap_login" id="dialog1">
    <div class="user_login">
        <h2>登录</h2>
        <div class="wrap_tab">
            <ul class="tab_title">
                <li class="on">普通用户</li>
                <li>平台供应商</li>
            </ul>
            <div class="tab_con">
                <div class="tab_con_list">
                    <ul>
                        <li>
                            <input type="text" class="input_login" placeholder="用户名"/>
                        </li>
                        <li>
                            <input type="text" class="input_login" placeholder="密码"/>
                        </li>
                    </ul>
                    <div id="mpanel1" > </div>
                    <a href="#" class="btn_login">登录</a> </div>
                <div class="tab_con_list">
                    <ul>
                        <li>
                            <input type="text" class="input_login" placeholder="用户名"/>
                        </li>
                        <li>
                            <input type="text" class="input_login" placeholder="密码"/>
                        </li>
                    </ul>
                    <div id="mpanel2" > </div>
                    <a href="#" class="btn_login">登录</a> </div>
            </div>
        </div>
    </div>
    <div class="wrap_register"> <a href="javascript:;" title="关闭" class="closeL">×</a>
        <div class="info_reg">
            <h2>注册</h2>
            <p>只需几步即可创建您的个人帐户<br/>
                并直接使用我们的在线服务。</p>
            <a class="btn_reg" href="register_1.jsp">注册</a> </div>
    </div>
</div>
<div class="login_bg"></div>
<script type="text/javascript">


    $(function(){
//合作伙伴轮播
        $('#demo01').flexslider({

            animation: "slide",

            direction:"horizontal",

            easing:"swing"

        });

//限制字符个数
        $(".nomore70").each(function(){
            var maxwidth=70;
            if($(this).text().length>maxwidth){
                $(this).text($(this).text().substring(0,maxwidth));
                $(this).jsp($(this).jsp()+'…');
            }
        });

    });


    /*滑动验证*/
    $('#mpanel1').slideVerify({
        type : 1,		//类型
        vOffset : 5,	//误差量，根据需求自行调整
        barSize : {
            width : '398px',
            height : '54px',
        },
        ready : function() {
        },


    });

    $('#mpanel2').slideVerify({
        type : 1,		//类型
        vOffset : 5,	//误差量，根据需求自行调整
        barSize : {
            width : '398px',
            height : '54px',
        },
        ready : function() {
        },


    });

    $('#mpanel3').slideVerify({
        type : 1,		//类型
        vOffset : 5,	//误差量，根据需求自行调整
        barSize : {
            width : '360px',
            height : '46px',
        },
        ready : function() {
        },

    });

</script>
</body>
</html>
