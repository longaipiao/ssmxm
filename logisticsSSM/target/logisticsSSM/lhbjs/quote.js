$(function () {
    //使用ajax获取订航的信息
    $.ajax({
        type : "post",
        url : "/findLid",
        contentType: "application/json", //如果提交的是json数据类型，则必须有此参数,表示提交的数据类型
        success : function (data) {
            var html = "";
            $.each(data,function (i, o) {
                html += '<div class="voyage">航程：'+ o.voyage +' 天</div>';
                html += '<ul class="line_cu">';
                html += '<li> '+ o.lstart +' </li>';
                html += '<li class="sorrow"></li>';
                html += '<li> '+ o.lend +' </li>';
                html += '</ul>';
                html += '<ul class="line_cu_info">';
                html += '<li>承运人：'+ o.trains +'</li>';
                html += '<li>中转方式：'+ o.lway +'</li>';
                html += '<li>预计发车日期：'+ o.startdate +'</li>';
                html += '<li>车名／班次：'+ o.train +'</li>';
                html += '<li>路线代码：'+ o.lserial +'</li>';
                html += '</ul>';
            });
            $("#quote").html(html);
        }
    });
});