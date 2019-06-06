package com.zking.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.zking.ssm.model.Line;
import com.zking.ssm.service.LineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
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
        Map<String, Object> resultMap = new HashMap<String, Object>();
        PageInfo<Line> pager = lineService.getLineAll(line, page, pageSize);
        //List<Line> lines = lineService.getLineAll(line);
        resultMap.put("code",0);
        //resultMap.put("msg","");
        //总条数
       resultMap.put("count", pager.getTotal());
        //获取每页数据
        resultMap.put("data", pager.getList());
        //request.getRequestDispatcher("pages/05_railway_class/railway_class.jsp").forward(request,response);
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







}
