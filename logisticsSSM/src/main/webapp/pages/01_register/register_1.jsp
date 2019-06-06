<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/29 0029
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>创建账户</title>
    <link href="../../css/common.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/verify.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/reset.css" rel="stylesheet" type="text/css"/>
    <link href="/admin/plugins/layui/css/layui.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="../../js/jquery.1.7.2.min.js"></script>
    <script type="text/javascript" src="../../js/customer2.js"></script>
    <script type="text/javascript" src="../../js/verify.js"></script>
    <script type="text/javascript" src="/lhbjs/userlogin.js"></script>
    <script type="text/javascript" src="/admin/plugins/layui/layui.all.js"></script>

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
        <li class="current"><i>1</i>创建账号</li>
        <li class="step_tri"></li>
        <li><i>2</i>完成</li>
    </ul>
    <div class="bg_register">
        <ul class="ul_reg_input">
            <li><b class="b2">账户名:</b>
                <div class="length_r">
                    <input type="text" id="uname1" oninput = "value=value.replace(/[a-zA-Z0-9_-]{10,16}/g,'')" class="input_reg" placeholder="请输入账户名" />
                </div>
            </li>
            <li><b class="b2">密码:</b>
                <div class="length_r">
                    <input type="password" id="upassword1" oninput = "value=value.replace(/[a-zA-Z0-9]{7,16}/g,'')" class="input_reg" placeholder="请输入密码" />
                </div>
            </li>
            <li><b class="b2">电子邮箱:</b>
                <div class="length_r">
                    <input type="text" oninput = "value=value.replace(/[\w]{18}/g,'')" id="email" class="input_reg warm" placeholder="请输入电子邮箱" />
                </div>
            <li><b class="b2">手机号码:</b>
                <div class="length_r">
                    <input type="text" id="utel" oninput = "value=value.replace(/[+]{0,1}[1-9]{12}/g,'')" class="input_reg" placeholder="请输入手机号码" />
                </div>
            </li>
            <li>
                <div class="length_r"><a class="btn_C" href="javasrcipt:void(0);" id="reg">注册</a></div>
            </li>
        </ul>
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

    <div class="wrap_login" id="dialog1">
        <div class="user_login">
            <h2>登录</h2>
            <div class="wrap_tab">
                <ul class="tab_title">
                    <li class="on">普通用户</li>
                </ul>
                <div class="tab_con">

                    <div class="tab_con_list">
                        <%--<form action="/UserLogin" method="post">--%>
                        <ul>
                            <li>
                                <input type="text" id="uname" oninput = "value=value.replace(/[\d]/g,'')" class="input_login" placeholder="用户名"/>
                            </li>
                            <li>
                                <input type="text" id="upassword" oninput = "value=value.replace(/[^\d]/g,'')" class="input_login" placeholder="密码"/>
                            </li>
                        </ul>
                        <div id="mpanel1" > </div>
                        <input type="submit" style="font-size: 20px; align-content: center" id="login" class="btn_login" value="登录">
                           <%-- </form>--%>
                    </div>

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
</div>
<div class="login_bg"></div>
<div class="wrap_tcp" id="dialog3">
    <h3>网站用户注册协议 <a href="javascript:;" title="关闭" class="close_t">×</a> </h3>
    <div class="content_tcp">
        <p>本协议由您与应运物流管理有限公司共同缔结，本协议具有合同效力。</p>
        <p>本协议中协议双方合称协议方，应运物流管理有限公司在协议中亦称为“订舱公司”。本协议中“应运物流”指由应运物流管理有限公司运营的网络交易平台，域名为rail.com。</p>
        <h5>一、协议内容及签署</h5>
        <p>1．本协议内容包括协议正文及所有rail已经发布的或将来可能发布的各类规则。所有规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，任何rail及其关联公司提供的服务（以下称为“rail”）均受本协议约束。</p>
        <p>2．您应当在使用rail服务之前认真阅读全部协议内容，对于协议中以加粗字体显示的内容，您应重点阅读。如您对协议有任何疑问的，应向rail咨询。但无论您事实上在使用rail服务之前是否认真阅读了本协议内容，只要您使用rail服务，则本协议即对您产生约束，届时您不应以未阅读本协议的内容或者未获得rail对您问询的解答等理由，主张本协议无效，或要求撤销本协议。</p>
        <h5>二、协议内容及签署</h5>
        <p>1．本协议内容包括协议正文及所有rail已经发布的或将来可能发布的各类规则。所有规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，任何rail及其关联公司提供的服务（以下称为“rail”）均受本协议约束。</p>
        <p>2．您应当在使用rail服务之前认真阅读全部协议内容，对于协议中以加粗字体显示的内容，您应重点阅读。如您对协议有任何疑问的，应向rail咨询。但无论您事实上在使用rail服务之前是否认真阅读了本协议内容，只要您使用rail服务，则本协议即对您产生约束，届时您不应以未阅读本协议的内容或者未获得rail对您问询的解答等理由，主张本协议无效，或要求撤销本协议。</p>
        <P>&nbsp;</P>
    </div>
</div>
<div class="tcp_bg"></div>
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
