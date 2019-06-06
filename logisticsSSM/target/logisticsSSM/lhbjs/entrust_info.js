$(function () {

    //获取发货方的数据
    $.ajax({
        type : "post",
        url : "/findLid",
        dataType : "json",
        success : function (data) {
            var html = "";
            $.each(data,function (i, o) {
                html += '<table class="table_A">';
                html += '<colgroup>';
                html += '<col width="130">';
                html += '<col width="430">';
                html += '<col width="130">';
                html += '<col width="430">';
                html += '</colgroup>';
                html += '<tr>';
                html += '<th>起始港：</th>';
                html += '<td>'+o.lstart+'</td>';
                html += '<th>目的港：</th>';
                html += '<td>'+o.lend+'</td>';
                html += '</tr>';
                html += '<tr>';
                html += '<th>承运公司：</th>';
                html += '<td>'+o.trains+'</td>';
                html += '<th>车名：</th>';
                html += '<td>'+o.lserial+'</td>';
                html += '</tr>';
                html += '<tr>';
                html += '<th>班次：</th>';
                html += '<td>'+o.train+'</td>';
                html += '<th><span>*</span>开车日期：</th>';
                html += '<td>'+o.startdate+'</td>';
                html += '</tr>';
                html += '</table>';
            });
            $("#entrust").html(html);
        }
    });

});