<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/29 0029
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>铁路班列</title>
    <link href="../../css/common.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/verify.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/reset.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/animate.min.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="../../js/jquery.1.7.2.min.js"></script>
    <script type="text/javascript" src="../../js/customer2.js"></script>
    <script type="text/javascript" src="../../js/verify.js"></script>
    <script src="lhbjs/index.js"></script>
    <!-- 以下是方法二所需要引入的js -->
    <link type="text/css" href="/admin/plugins/layui/css/layui.css" rel="stylesheet">
    <script type="text/javascript" src="/admin/plugins/layui/layui.all.js"></script>

</head>
<body class="bg_f4">
<div class="bg_fff">

    <div class="bg_top">
        <div class="page_con">
            <ul class="func_top">
                <li class="mL24"><a href="../01_register/register_1.jsp">注册</a></li>
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
        <h1 class="logo_text"><a href="../../index.jsp"><img alt="" width="100px" height="" src="../../images/logo_text.png"/></a></h1>
        <ul class="nav">
            <li><a href="../04_railway_booking/booking_no_quote.jsp">铁路订舱</a></li>
            <li><a class="current" href="../05_railway_class/railway_class.jsp">铁路班列</a></li>
            <li><a href="../06_order_tracking/order_tracking.jsp">订舱跟踪</a></li>
            <li><a href="../07_about_us/about.jsp">关于平台</a></li>
        </ul>
        <a href="../../index.jsp">
            <h1 class="logo_icon"></h1>
        </a> </div>
</div>
<div class="bg_header_second">
    <div class="page_con"> <a href="../../index.jsp">
        <h2 class="logo_navS"></h2>
    </a>
        <ul class="navS">
            <li><a href="../04_railway_booking/booking_no_quote.jsp">铁路订舱</a></li>
            <li><a class="current" href="../05_railway_class/railway_class.jsp">铁路班列</a></li>
            <li><a href="../06_order_tracking/order_tracking.jsp">订舱跟踪</a></li>
            <li><a href="../07_about_us/about.jsp">关于平台</a></li>
        </ul>
        <ul class="func_top">
            <li class="mL24"><a href="#">注册</a></li>
            <li><a class="btnB" data-dialog="dialog1" href="#">登录</a></li>
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
<div class="content">
    <div class="right_suspension">
        <ul>
            <li><a href="../../index.jsp">
                <div class="sidebox"><i class="rs_1"></i>返回首页</div>
            </a></li>
            <li><a href="#">
                <div class="sidebox"><i class="rs_2"></i>1-666-888</div>
            </a></li>
            <li><a class="bounceInRight dialog_help demo40" href="#" >
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

    <%--
     <input type="hidden" id="lstart" value="${lstart}"/>
    <input type="hidden" id="lend" value="${lend}"/>
    --%>
    <div class="bg_condition">
        <form action="/line" method="post">
        <div class="page_con">
            <div class="cond_line">
                <input type="text" id="lstart" value="${lstart}" class="inp_line" placeholder="起运站"/>
                <span class="fL">|</span>
                <input type="text" id="lend" value="${lend}" class="inp_line" placeholder="目的站"/>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">起始日期</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="date1" placeholder="发车起始日期">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">截止日期</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="date2" placeholder="截止日期">
                </div>
            </div>


            <%--<div class="cond_time"> <span class="date_select fL">
                <input type="text" placeholder="发车起始日期" class="input_B lay_t_item">
                </span> 至 <span class="date_select fR">
                <input type="text" placeholder="截止日期" class="input_B lay_t_item">
                </span>
            </div>--%>
            <input type="submit" style="font-size: 28px" value="查询"/>
            </div>
        </form>
    </div>
    <div class="page_con">
        <ul class="header_class">
            <li class="l1">线路</li>
            <li class="l2">价格</li>
            <li class="l3">日期信息</li>
            <li class="l4">操作</li>
        </ul>
        <%--数据的展示：--%>
        <div class="list_class clear" id="tbody">


        </div>
        <%--分页放的标签--%>
        <div id="page1"></div>

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
                        <a href="../../index_logged_in.jsp" class="btn_login">登录</a> </div>
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
                        <a href="../../index_logged_in.jsp" class="btn_login">登录</a> </div>
                </div>
            </div>
        </div>
        <div class="wrap_register"> <a href="javascript:;" title="关闭" class="closeL">×</a>
            <div class="info_reg">
                <h2>注册</h2>
                <p>只需几步即可创建您的个人帐户<br/>
                    并直接使用我们的在线服务。</p>
                <a class="btn_reg" href="../02_help/register_1.jsp">注册</a> </div>
        </div>
    </div>
</div>
<div class="login_bg"></div>

<!--右侧帮助-->
<div id="HBox">
    <div class="head_help">
        <h2>帮助</h2>
        <div class="bg_w_search fL margin_se_help"><a class="se" href="#"></a>
            <input type="text" value="" placeholder="您有什么需要帮忙的"/>
        </div>
    </div>
    <div class="list_help">
        <ul>
            <li class="title">为您推荐</li>
            <li><a href="#"><i></i>国内可以安排退货吗？</a></li>
            <li><a href="#"><i></i>国外段可以送货吗？</a></li>
            <li><a href="#"><i></i>下单时提货方式怎么选择？</a></li>
            <li><a href="#"><i></i>铁路运输的速度怎么样的速度怎么样的速度怎么样？</a></li>
            <li><a href="#"><i></i>铁路中的运单是提货凭证？</a></li>
            <li><a href="#"><i></i>我有货物要送亚马逊仓库，有什么要求吗？</a></li>
            <li><a href="#"><i></i>海关对货物的查验有哪些要求？</a></li>
            <li><a href="#"><i></i>当货物查验时需要提供哪些材料？</a></li>
            <li class="phone"><i></i>联系客服：<span>1666 666 888</span></li>
        </ul>
    </div>
</div>
<div class="footer">
    <div class="page_con">
        <ul class="nav_foot">
            <li><a href="#">铁路订舱</a></li>
            <li><a href="#">铁路班列</a></li>
            <li><a href="#">订舱跟踪</a></li>
            <li><a href="#">关于平台</a></li>
        </ul>
        <div class="phone_foot">客服热线：1666 666 888</div>
        <div class="copyright">Copyright © 2017 - 2018 xxxx.com 版权所有</div>
    </div>
</div>
<div class="wrap_tcp" id="dialog3">
    <h3>电子订舱协议 <a href="javascript:;" title="关闭" class="close_t">×</a> </h3>
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
<script src="../../js/banner.js" type="text/javascript"></script>
<script src="../../js/slider.js" type="text/javascript"></script>
<script type="text/javascript" src="../../js/jquery.hDialog.min.js"></script>
<script type="text/javascript" src="../../js/laydate/laydate.js"></script>
<script type="text/javascript">
    $(function(){
        //执行多个日历
        lay('.lay_t_item').each(function(){
            laydate.render({
                elem: this
            });
        });
    });

</script>
<script type="text/javascript">




    $(function(){
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

//右侧帮助弹出
        $(function(){
            var $el = $('.dialog_help');
            $el.hDialog(); //默认调用
            //slideOutRight关闭效果
            $('.demo40').hDialog({effect: 'slideOutRight'});


        });

//ipad触摸
        $(function(){

            [javascript] view plain copy
            var getDragClass=(function(){
                var SupportsTouches = ("createTouch" in document),//判断是否支持触摸
                    StartEvent = SupportsTouches ? "touchstart" : "mousedown",//支持触摸式使用相应的事件替代
                    MoveEvent = SupportsTouches ? "touchmove" : "mousemove",
                    EndEvent = SupportsTouches ? "touchend" : "mouseup",
                    $=function(id){
                        return document.getElementById(id);
                    },
                    preventDefault=function(ev){
                        if(ev)ev.preventDefault();
                        else window.event.returnValue = false;
                    },
                    getMousePoint=function(ev){
                        var x = y = 0,
                            doc = document.documentElement,
                            body = document.body;
                        if(!ev) ev=window.event;
                        if (window.pageYoffset) {
                            x = window.pageXOffset;
                            y = window.pageYOffset;
                        }else{
                            x = (doc && doc.scrollLeft || body && body.scrollLeft || 0) - (doc && doc.clientLeft || body && body.clientLeft || 0);
                            y = (doc && doc.scrollTop  || body && body.scrollTop  || 0) - (doc && doc.clientTop  || body && body.clientTop  || 0);
                        }
                        if(SupportsTouches){
                            var evt = ev.touches.item(0);//仅支持单点触摸,第一个触摸点
                            x=evt.pageX;
                            y=evt.pageY;
                        }else{
                            x += ev.clientX;
                            y += ev.clientY;
                        }
                        return {'x' : x, 'y' : y};
                    };
                function _drag(opt){
                    this.el=typeof opt.el=='string'?$(opt.el):opt.el;//被拖动节点
                    this.onstart=opt.start || new Function();//
                    this.onmove=opt.move || new Function();
                    this.onend=opt.end || new Function();
                    this.action=false;
                    this.init();
                }
                _drag.prototype={
                    init:function(){
                        this.el.style.position='relative';
                        this.el['on'+StartEvent]=this.bind(function(e){//绑定节点的 [鼠标按下/触摸开始] 事件
                            preventDefault(e);
                            if(this.action)return false;
                            else this.action=true;
                            this.startPoint=getMousePoint(e);
                            this.onstart();
                            document['on'+MoveEvent]=this.bind(function(e){
                                preventDefault(e);//取消文档的默认行为[鼠标移动、触摸移动]
                                this.nowPoint=getMousePoint(e);
                                this.el.style.left=this.nowPoint.x-this.startPoint.x+'px';
                                this.el.style.top=this.nowPoint.y-this.startPoint.y+'px';
                                this.onmove();
                            },this);
                            document['on'+EndEvent]=document['ontouchcancel']=this.bind(function(){
                                document['on'+EndEvent]=document['ontouchcancel']=document['on'+MoveEvent]=null;
                                this.action=false;
                                this.onend();
                            },this);
                        },this);
                    },
                    bind:function(fn,obj){
                        return function(){
                            fn.apply(obj,arguments);
                        }
                    }
                }
                return function(opt){
                    return new _drag(opt);
                }
            })();

        });


</script>
</body>
</html>
