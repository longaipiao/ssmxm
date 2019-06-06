$(function () {
        var lstart1 = $("#lstart").val();
        var lend1 = $("#lend").val();
        var date1 = $("#date1").val();
        var date2 = $("#date2").val();

    //方法二则直接使分用layui-v2.0.2里面的页功能，没有用到core.js里面的方法
    layui.use('laypage', function(){
        var laydate = layui.laydate;
        var laypage = layui.laypage;

        //常规用法
        laydate.render({
            elem: '#date1'
        });
        laydate.render({
            elem: '#date2'
        });

        var config = {page:1,pageSize:2,lstart:lstart1,lend:lend1,startdate:date1,enddate:date2};
        var url = "/linelist";
        $.getJSON(url,config,function(res){
            //alert(res.count);
            laypage.render({
                elem: 'page1',
                count: 100,
                first: '首页',
                last: '尾页',
                count: res.count, //总条数
                limit:config.pageSize, //每页条数
                theme: '#FFB800', //自定义颜色
                jump: function(obj, first){
                    //alert(obj.curr)
                    if(!first){ //首次则不进入
                        config.page = obj.curr;
                        getUserListByPage(url,config);
                    }
                }
            });
            parseUserList(res,config.page);
        });
    });

    //点击页数从后台获取数据
    function getUserListByPage(url,config){
        $.getJSON(url,config,function(res){
            parseUserList(res,config.page);
        });
    }
    //解析数据，currPage参数为预留参数，当删除一行刷新列表时，可以记住当前页而不至于显示到首页去
    function parseUserList(res,currPage){
        var content = "";
        $.each(res.data, function (i, o) {

            content += '<div class="line_OD">';
            content += '<span>始： '+ o.lstart +' </span>';
            content += '<i>铁路&nbsp;中转&nbsp;4天&nbsp;不来梅</i>';
            content += '<span>终：' + o.lend + '</span>';
            content += '</div>';
            content += '<div class="price_class">';
            content += '<span>TON：'+o.lweight+'</span> <span>CBM：'+o.trunksize+'</span>';
            content += '</div>';
            content += '<div class="time_class">';
            content += '<span>预计发车  ' + o.startdate + '</span> <span>截止订舱  '+o.enddate+'</span>';
            content += '</div>';
            content += '<ul class="ul_btn_class">';
            content += '<li><a href="#" class="btn_B">查看路线</a></li>';
            content += "<li class='mL'><a href='/pages/05_railway_class/1_quote.jsp' onclick='getlid(\"" + o.lid +"\")' class='btn_E'>订舱</a></li>";
            content += '</ul>';
            content += '<div class="list_ps">'+o.lnote+'</div>';
        });
            $('#tbody').html(content);
    }
});
/*订航的点击事件*/
function getlid(lid){
    //alert(lid);
    $.post("/selectLid",{lid:lid},function (data) {
    });
}
