<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/29 0029
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>用户中心-我的订舱单</title>
    <link href="../../css/common.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/reset.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="../../js/jquery.1.7.2.min.js"></script>
    <script type="text/javascript" src="../../js/customer2.js"></script>
</head>
<body class="bg_f4">
<div class="bg_fff">
    <div class="page_con">
        <div class="bg_top">
            <ul class="func_top">
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
            <li><a href="../05_railway_class/railway_class.jsp">铁路班列</a></li>
            <li><a href="../06_order_tracking/order_tracking.jsp">订舱跟踪</a></li>
            <li><a href="../07_about_us/about.jsp">关于平台</a></li>
        </ul>
        <div class="my_account_A acc_mT">
            <div class="acc clear"> 我的账户 <span class="tri"></span>
                <div class="account_con_A">
                    <ul>
                        <li><a class="acl1" href="user_center.jsp">个人中心</a></li>
                        <li><a class="acl1" href="../../index.jsp">退出账号</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="bg_header_second">
    <div class="page_con"> <a href="../../index.jsp">
        <h2 class="logo_navS"></h2>
    </a>
        <ul class="navS">
            <li><a href="../04_railway_booking/booking_no_quote.jsp">铁路订舱</a></li>
            <li><a href="../05_railway_class/railway_class.jsp">铁路班列</a></li>
            <li><a href="../06_order_tracking/order_tracking.jsp">订舱跟踪</a></li>
            <li><a href="../07_about_us/about.jsp">关于平台</a></li>
        </ul>
        <ul class="func_top">
            <li>
                <div class="my_account_A">
                    <div class="acc clear"> 我的账户 <span class="tri"></span>
                        <div class="account_con_A">
                            <ul>
                                <li><a class="acl1" href="user_center.jsp">个人中心</a></li>
                                <li><a class="acl1" href="../../index.jsp">退出账号</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </li>
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
<div class="right_suspension right_xf">
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
<div class="bg_user"></div>
<div class="wrap_user clear">
    <div class="left_menu">
        <ul>
            <li><a href="/line">铁路班列</a></li>
            <li><a class="current" href="/selectOrders">我的订舱单</a></li>
            <li><a href="/pages/08_user_center/user_center.jsp">账户设置</a></li>
        </ul>
    </div>
    <div class="right_con">
        <div class="con_user_r clear" style="min-height:480px;">
            <h2>我的订航单</h2>
            <form method="post" id="forma" action="/selectOrder">
                <table class="wrap_user_inp mTop_20">
                    <colgroup>
                        <col width="80px">
                        <col width="220px">
                        <col width="80px">
                        <col width="220px">
                        <col width="80px">
                        <col width="220px">
                    </colgroup>
                    <tr>
                        <th>订单号：</th>
                        <td><input name="ddh" class="input_u" placeholder="订单号"/></td>
                        <th>提单号：</th>
                        <td><input name="tdh" class="input_u" placeholder="提单号"/></td>
                    </tr>
                    <tr>
                        <th>起运站：</th>
                        <td><input name="qyz" class="input_u" placeholder="起运站"/></td>
                        <th>目的站：</th>
                        <td><input name="mdz" class="input_u" placeholder="目的站"/></td>
                    </tr>

                </table>
                <div class="btn_wrap" style="margin:20px 0 0 0;">
                    <div class="btn_inline">
                        <ul>
                            <li> <a href="javascript:void(0)" name="submit" onclick="document.getElementById('forma').submit();return false" class="btn_search_user">查询</a> </li>
                        </ul>
                    </div>
                </div>
            </form>
            <table class="table_U mTop_40">
                <tr>
                    <th>订单服务状态</th>
                    <th>订单号</th>
                    <th>创建日期</th>
                    <th>提单号</th>
                    <th>订单总价</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${orders}" var="o">
                    <tr>
                        <td>
                            <c:if test="${o.ostate==0}">
                                已提交
                            </c:if>
                            <c:if test="${o.ostate==1}">
                                运输中
                            </c:if>
                            <c:if test="${o.ostate==2}">
                                已到达
                            </c:if>
                            <c:if test="${o.ostate==3}">
                                已提货
                            </c:if>
                        </td>
                        <td>${o.oid}</td>
                        <td>${o.credate}</td>
                        <td>${o.blno}</td>
                        <td>${o.price.totalmoney}</td>
                        <td><a href="/selectOrder?oid="+${o.oid}>查看详情</a></td>
                    </tr>
                </c:forEach>

            </table>
        </div>
    </div>
</div>
<div class="footer" style="margin-top: 0;">
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
<script src="../../js/slider.js" type="text/javascript"></script>
<script type="text/javascript" src="../../js/laydate/laydate.js"></script>
<script>
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
