package com.zking.ssm.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageInfo;
import com.zking.ssm.model.Line;
import com.zking.ssm.service.LineService;
import com.zking.ssm.util.IdGeneratorUtils;
import com.zking.ssm.util.RandomStringTool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @email 2417902780@qq.com
 * @author:阿飘
 * @company 飘飘公司
 * @create 2019-05-31 22:30
 */
@Controller
public class LineController {

    @Autowired
    private LineService lineService;

    /**
     * 查询跳转方法
     * @param line
     * @param request
     * @return
     */
    @RequestMapping(value = "/line")

    public String getjsp(Line line,HttpServletRequest request){
        request.getSession().setAttribute("lstart",line.getLstart());
        request.getSession().setAttribute("lend",line.getLend());
        return "pages/05_railway_class/railway_class.jsp";
    }

    //实现查询路线的方法
    @RequestMapping(value = "/linelist")
    @ResponseBody
    public Map<String, Object> getLine(Line line,Integer page,Integer pageSize) throws ServletException, IOException {
        System.err.println("查询路线的方法====");
        System.out.println("线路的对象是:"+line);
        Map<String, Object> resultMap = new HashMap<String, Object>();
        PageInfo<Line> pager = lineService.getLineAll(line, page, pageSize);
        resultMap.put("code",0);
        resultMap.put("msg","");
        //总条数
        resultMap.put("count", pager.getTotal());
        //获取每页数据
        resultMap.put("data", pager.getList());
        return resultMap;
    }

    /**
     * 根据线路id查询   订航
     */
    @RequestMapping(value = "/selectLid")
    public String getLid(String lid,HttpServletRequest request){
        //System.out.println("lid是："+lid);
        request.getSession().setAttribute("lid",lid);
        return "";
    }

    /**
     * 订航信息单条数据
     * @param request
     * @return
     */
    @RequestMapping(value = "/findLid")
    @ResponseBody
    public List<Line> getLineLid(HttpServletRequest request, HttpSession session){
        String lid = (String) request.getSession().getAttribute("lid");
        List<Line> lineByLid = lineService.getLineByLid(lid);
        for (Line line : lineByLid) {
            session.setAttribute("line",line);
        }
        return lineByLid;
    }


    /**
     * 增加线路的方法
     */
    @RequestMapping(value = "/addLine")
    public void addLine(Line line,HttpServletResponse response) throws IOException {
        System.err.println("进入增加线路的方法======");
        System.err.println("线路对象数据："+line);
        line.setLid(new IdGeneratorUtils().nextId());
        line.setTrunksize(1000);
        line.setLway("直达");
        new RandomStringTool();
        line.setTrain(RandomStringTool.getRandomString(10,true));
        line.setLserial(RandomStringTool.getRandomString(6,true));
        int line1 = lineService.addLine(line);
        //将集合转换成JSON数据
        ObjectMapper mapper = new ObjectMapper();
        //通过Out对象将JSON字符串响应到前端ajax
        PrintWriter out = response.getWriter();
        String json = mapper.writeValueAsString(line1);
        out.println(json);
        out.flush();
        out.close();
    }


    /**
     * 后台查询所有的方法带模糊查询的
     */
    @RequestMapping(value = "/htLineAll")
    @ResponseBody
    public Map<String,Object> htline(Line line, Integer page, Integer limit){
        System.out.println("后台查询的方法：======");
        System.out.println("线路的对象是："+line);
        Map<String,Object> maps = new HashMap<>();
        PageInfo<Line> lines = lineService.getThLineAll(line, page, limit);
        maps.put("msg","");
        maps.put("code",0);
        maps.put("count",lines.getTotal());
        maps.put("data",lines.getList());
        return maps;
    }

    /**
     * 修改的方法
     */
    @RequestMapping(value = "/updateByLid")
    public void updateByLid(Line line,HttpServletResponse response) throws IOException {
        System.err.println("线路修改的方法：=====");
        System.err.println("线路的对象="+line);
        int lid = lineService.updateByLid(line);
        //将集合转换成JSON数据
        ObjectMapper mapper = new ObjectMapper();
        //通过Out对象将JSON字符串响应到前端ajax
        PrintWriter out = response.getWriter();
        String json = mapper.writeValueAsString(lid);
        out.println(json);
        out.flush();
        out.close();
    }

    /**
     * 运营的方法   状态为1
     */
    @RequestMapping(value = "/updateline1")
    public void updateline1(String lid,HttpServletResponse response) throws IOException {
        System.out.println("修改状态为1的方法：========");
        int lid1 = lineService.updateline1(lid);
        //将集合转换成JSON数据
        ObjectMapper mapper = new ObjectMapper();
        //通过Out对象将JSON字符串响应到前端ajax
        PrintWriter out = response.getWriter();
        String json = mapper.writeValueAsString(lid1);
        out.println(json);
        out.flush();
        out.close();
    }

    /**
     * 停止运营的方法   状态为2
     */
    @RequestMapping(value = "/updateline2")
    public void updateline2(String lid,HttpServletResponse response) throws IOException {
        System.out.println("修改状态为2的方法：========");
        int lid1 = lineService.updateline2(lid);
        //将集合转换成JSON数据
        ObjectMapper mapper = new ObjectMapper();
        //通过Out对象将JSON字符串响应到前端ajax
        PrintWriter out = response.getWriter();
        String json = mapper.writeValueAsString(lid1);
        out.println(json);
        out.flush();
        out.close();
    }


}
