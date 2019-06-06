<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/29 0029
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>铁路订舱</title>
    <link href="../../css/common.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/verify.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/reset.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="/admin/plugins/layui/css/layui.css" media="all">
    <link href="../../css/animate.min.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/jquery.1.7.2.min.js"></script>
    <script type="text/javascript" src="../../js/customer2.js"></script>
    <script type="text/javascript" src="../../js/verify.js"></script>
    <script type="text/javascript" src="/admin/plugins/layui/layui.js"></script>
    <script type="text/javascript" src="/lhbjs/srgall.js"></script>
</head>

<body class="bg_f4">
<div class="bg_fff">
    <div class="page_con">
        <div class="bg_top">
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
            <li><a class="current" href="../04_railway_booking/booking_no_quote.jsp">铁路订舱</a></li>
            <li><a href="/line">铁路班列</a></li>
            <li><a href="../06_order_tracking/order_tracking.jsp">订舱跟踪</a></li>
            <li><a href="../07_about_us/about.jsp">关于平台</a></li>
        </ul>
        <a href="../../index.jsp"><h1 class="logo_icon"></h1></a>
    </div>
</div>
<div class="bg_header_second">
    <div class="page_con">
        <a href="../../index.jsp"><h2 class="logo_navS"></h2></a>
        <ul class="navS">
            <li><a class="current" href="../04_railway_booking/booking_no_quote.jsp">铁路订舱</a></li>
            <li><a href="../05_railway_class/railway_class.jsp">铁路班列</a></li>
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





<div class="bg_com mTop_40 clear">
    <div class="h2_booking">铁路订舱</div>
    <h2 class="title_main mTop_40">发货方</h2>

    <div class="w_table_A">
        <table class="table_A">
            <colgroup>
                <col width="130">
                <col width="242">
                <col width="130">
                <col width="242">
                <col width="130">
                <col width="242">
            </colgroup>
            <tr>
                <th>发货人(中文)：</th>
                <td><input type="text" id="sname"  class="input_B" placeholder="发货人"/></td>
                <th>联系电话：</th>
                <td><input type="text" id="stel"  class="input_B" placeholder="联系电话"/></td>
            </tr>
            <tr>
                <th>预约提货日期：</th>
                <td>
                    <span class="date_select">
                        <div class="layui-inline">
                              <div class="layui-input-inline">
                                <input type="text" class="layui-input" id="pickdate" placeholder="预约提货日期">
                              </div>
                        </div>
                    </span>
                </td>
                <th>箱量（个数）：</th>
                <td><input type="text" id="quantity"  class="input_B" placeholder="箱量"/></td>
                <th>发货地址：</th>
                <td><input type="text" id="saddress"  class="input_B" placeholder="发货地址"/></td>
            </tr>
            <tr>
                <th>预约发货时间：</th>
                <td>
                    <span class="date_select">
                        <div class="layui-inline">
                              <div class="layui-input-inline">
                                <input type="text" class="layui-input" id="sdate" placeholder="预约发货时间">
                              </div>
                        </div>
                    </span>
                </td>

                <th>货物名称：</th>
                <td><input type="text" id="goodname" class="input_B" placeholder="货物名称"/></td>
                <th>备注：</th>
                <td>
                   <textarea placeholder="请输入内容"  id="snote" class="layui-textarea" style="width: 200px;"></textarea>
                </td>
            </tr>
        </table>
    </div>

    <h2 class="title_main mTop_40">收货方</h2>

    <div class="w_table_A">
        <table class="table_A">
            <colgroup>
                <col width="130">
                <col width="242">
                <col width="130">
                <col width="242">
                <col width="130">
                <col width="242">
            </colgroup>
            <tr>
                <th>收货人(中文)：</th>
                <td><input type="text" id="rname"  class="input_B" placeholder="收货人"/>
                </td>
                <th>联系人电话：</th>
                <td><input type="text" id="rtel"  class="input_B" placeholder="联系人电话"/></td>
                <th>电子邮箱：</th>
                <td><input type="text" id="remail" class="input_B" placeholder="电子邮箱"/></td>
            </tr>
            <tr>
                <th>送货地址：</th>
                <td><input type="text" id="raddress"  class="input_B" placeholder="送货地址"/></td>
            </tr>
        </table>
    </div>


    <h2 class="title_main mTop_40">货物</h2>

    <div class="w_table_A">
        <table class="table_A">
            <colgroup>
                <col width="130">
                <col width="242">
                <col width="130">
                <col width="242">
                <col width="130">
                <col width="242">
            </colgroup>
            <tr>
                <th>货物名称：</th>
                <td><input type="text" id="gname"  class="input_B" placeholder="货物名称"/>
                </td>
                <th>包装要求(中文)：</th>
                <td><input type="text" id="packaging" class="input_B" placeholder="包装要求"/></td>
                <th>件数(单位：件)：</th>
                <td><input type="text" id="number"  class="input_B" placeholder="件数"/></td>

            </tr>
            <tr>
                <th>总重（单位：kg）：</th>
                <td><input type="text" id="gweight"  class="input_B" placeholder="总重"/>
                </td>
                <th>总体积(单位:m3)：</th>
                <td><input type="text" id="gvolume" class="input_B" placeholder="总体积"/></td>
            </tr>
        </table>
    </div>


    <h2 class="title_main mTop_40">服务选项</h2>

    <div class="w_table_A">
        <table class="table_A">
            <tr>
                <td>
                    <label><input id="checkbox"  class="form_checkbox" type="checkbox"/>&nbsp;是否需要本公司提送货</label>
                </td>
            </tr>

        </table>
    </div>
    <div class="btn_wrap" style="margin-top:0">
        <div class="btn_inline">
            <ul>
                <li><a href="javascript:void(0);" class="layui-btn" id="but">提交订舱单</a></li>
            </ul>
        </div>
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
<%--
<script type="text/javascript" src="../../js/laydate/laydate.js"></script>
--%>

<script>
    $(function () {


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

    });
</script>


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
</body>
</html>
