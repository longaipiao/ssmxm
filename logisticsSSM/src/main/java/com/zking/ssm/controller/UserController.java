package com.zking.ssm.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageInfo;
import com.zking.ssm.model.User;
import com.zking.ssm.service.UserService;
import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @email 2417902780@qq.com
 * @author:阿飘
 * @company 飘飘公司
 * @create 2019-06-02 19:03
 */
@Controller
public class UserController {
    @Autowired
    private UserService userService;

    private User user1 = new User();

    /**
     * 用户登录的方法
     * @param user
     * @param response
     * @throws IOException
     */

    @RequestMapping(value = "/UserLogin")
    public void userlogin(User user, HttpServletResponse response) throws IOException {
        System.out.println("进入登录方法了=====");
        //将集合转换成JSON数据
        ObjectMapper mapper = new ObjectMapper();
        //通过Out对象将JSON字符串响应到前端ajax
        PrintWriter out = response.getWriter();
        user1.setUname(user.getUname());
        user1.setUpassword(user.getUpassword());
        System.out.println("用户："+user1.getUname()+"  ===  "+user1.getUpassword());
        boolean b = userService.UserLogin(user1);
        String json = mapper.writeValueAsString(b);
        System.out.println(json);
        out.println(json);
        out.flush();
        out.close();
    }


    /**
     * 用户注册的方法
     */
    @RequestMapping(value = "/regUser")
    public void reguser(User user,HttpServletResponse response) throws IOException {
        System.out.println("用户注册的方法=====");
        System.out.println(user+"============");
        //将集合转换成JSON数据
        ObjectMapper mapper = new ObjectMapper();
        //通过Out对象将JSON字符串响应到前端ajax
        PrintWriter out = response.getWriter();
        user.setDateofbirth(DateFormatUtils.format(new Date(), "yyyy-MM-dd"));
        int reguser = userService.regUser(user);
        String json = mapper.writeValueAsString(reguser);
        out.println(json);
        out.flush();
        out.close();
    }


    /**
     * 用户查询带模糊查询的方法
     */
    @RequestMapping(value = "/findUser")
    @ResponseBody
    public Map<String,Object> fingUserlike(User user,Integer page,Integer limit, HttpServletResponse response) throws IOException {
        System.out.println("用户查询的方法带模糊查的=====");
        PageInfo<User> users = userService.FindUserlike(user,page,limit);
        Map<String,Object> maps = new HashMap<>();
        maps.put("msg","");
        maps.put("code",0);
        maps.put("count",users.getTotal());
        maps.put("data",users.getList());
        return maps;
    }

    /**
     * 封禁用户的方法  状态为2
     */
    @RequestMapping(value = "/updateState2")
    public void updateState2(HttpServletResponse response, Integer uid) throws IOException {
        System.err.println("修改状态为2的方法====封禁用户");
        System.err.println("uid===="+uid);
        int id = userService.updateState2(uid);
        System.err.println("封禁id是："+id);

        //将集合转换成JSON数据
        ObjectMapper mapper = new ObjectMapper();
        //通过Out对象将JSON字符串响应到前端ajax
        PrintWriter out = response.getWriter();
        String json = mapper.writeValueAsString(id);
        out.println(json);
        out.flush();
        out.close();
    }

    /**
     * 解封用户的方法   状态为1
     */
    @RequestMapping(value = "/updateState1")
    public void updateState1(HttpServletResponse response,Integer uid) throws IOException {
        System.err.println("修改状态为1的方法====解封用户");
        System.err.println("uid===="+uid);
        int id = userService.updateState1(uid);
        System.err.println("解封id是："+id);
        //将集合转换成JSON数据
        ObjectMapper mapper = new ObjectMapper();
        //通过Out对象将JSON字符串响应到前端ajax
        PrintWriter out = response.getWriter();
        String json = mapper.writeValueAsString(id);
        out.println(json);
        out.flush();
        out.close();
    }


    /**
     * 修改用户信息的方法
     */
    @RequestMapping(value = "/updateUser")
    public void updateUser(User user,HttpServletResponse response) throws IOException {
        System.err.println("用户修改的方法=======");
        System.out.println("修改的用户信息："+user);
        int uid = userService.updateByPrimaryKey(user);
        //将集合转换成JSON数据
        ObjectMapper mapper = new ObjectMapper();
        //通过Out对象将JSON字符串响应到前端ajax
        PrintWriter out = response.getWriter();
        String json = mapper.writeValueAsString(uid);
        out.println(json);
        out.flush();
        out.close();
    }






}
