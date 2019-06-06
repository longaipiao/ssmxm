package com.zking.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader;
import com.zking.ssm.model.Emp;
import com.zking.ssm.model.Menu;
import com.zking.ssm.model.Role;
import com.zking.ssm.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.plugin.javascript.navig.Array;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sound.midi.Soundbank;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AdminController {

    @Autowired
    private EmpService empService;

   //用户登录
    @RequestMapping("/admin/login")
    public String login(Emp emp,HttpSession session){
        Emp emp1 = empService.loginEmp(emp);
        session.setAttribute("emp",emp1);
        System.out.println(emp1);
        return "redirect:/admin/index.jsp";
    }


    /*@RequestMapping(value = "/admin/login")
    public String login(Emp emp) throws Exception{
        System.out.println("哈哈哈哈");
        //获得主体
        Subject subject = SecurityUtils.getSubject();
        //将用户信息进行用户名/密码认证机制
        UsernamePasswordToken token = new UsernamePasswordToken(emp.getEname(),emp.getEpassword());
        //开始进行认证
        try {
            subject.login(token);
            Emp principal=(Emp)subject.getPrincipal();
            System.out.println("授权对象========="+principal);//拿到的是认证和授权的对象
        }catch (UnknownAccountException e){
            System.out.println("账户异常");
            return "/admin/login.jsp";
        }
        return "/admin/index.jsp";
    }*/



    @RequestMapping(value = "/admin/getMenus")
    @ResponseBody
    public List<Menu> getMenus(HttpSession session) {
        Emp emp =(Emp) session.getAttribute("emp");
        List<Menu> mens = empService.getMenus2(emp);
        return mens;
    }

    /**
     * 获取所有的员工
     * @return
     */
    @RequestMapping("/admin/getEmps")
    @ResponseBody
    public Map<String,Object> getEmps(HttpSession session,Emp emp,Integer page,Integer limit){
        Emp emp1 =(Emp) session.getAttribute("emp");
        emp.setEaddress(emp1.getEaddress());
        System.out.println(emp.getEname());
        PageInfo<Emp> empAll = empService.getEmpAll(emp, page,limit);

        List<Object> o=new ArrayList<>();
        for (Emp emp2 : empAll.getList()) {
            Map<String,Object> map2=new HashMap<>();
            map2.put("eid",emp2.getEid());
            map2.put("ename",emp2.getEname());
            map2.put("epassword",emp2.getEpassword());
            map2.put("esex",emp2.getEsex());
            map2.put("regtime",emp2.getRegtime());
            map2.put("state",emp2.getState());
            map2.put("eaddress",emp.getEaddress());
            map2.put("etel",emp2.getEtel());
            map2.put("rname",emp2.getRole().getRname());
            o.add(map2);
        }





        Map<String,Object> map=new HashMap<>();
        map.put("code",0);
        map.put("msg", "");
        map.put("count",empAll.getTotal());
        map.put("data",o);
        return  map;
    }

    /**
     * 增加员工
     * @param emp
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/addemp")
    @ResponseBody
    public int addEmp(Emp emp, HttpServletRequest request) throws Exception{
       System.out.println("接收的emp:"+emp);
       //根据用户名找到是否有相同的用户名
        Emp emp1 = empService.loginEmp(emp);
       System.out.println("输出是否有相同的用户名"+emp1);
        if(emp1==null) {
            String zid = request.getParameter("zid");
            int maxeid = empService.getMaxeid();
            //开始调用增加方法
            emp.setElevel(maxeid + 1);
            emp.setEid(String.valueOf(maxeid + 1));
            int i = empService.addEmp(emp);
             //开始增加角色
            int i1 = empService.addER(Integer.parseInt(emp.getEid()), Integer.parseInt(zid));
            return 1;
        }
       return 2;

    }


    /**
     * 删除员工
     * @param emp
     * @return
     */
    @RequestMapping("/admin/deleteEmp")
    @ResponseBody
    public int deleteEmp(Emp emp){
        System.out.println(emp.getElevel());
        int i = empService.deleteEmpById(emp.getElevel());
        if (i>0){
            int i1 = empService.deletEr(emp.getElevel());
            return i1;
        }
        return emp.getElevel();
    }


    /**
     * 批量删除
     * @param emp
     * @return
     */
    @RequestMapping("/admin/deleteEmps")
    @ResponseBody
    public int deleteEmps(Emp emp){
        String eid = emp.getEid();
        String[] eids = eid.split(",");
        int [] a=new int[eids.length];
        List<Integer> aaa=new ArrayList<>();//转换后加到集合里面
        for (int i=0;i<eids.length;i++) {
            aaa.add(Integer.parseInt(eids[i]));
        }

        if(a.length>0){
            int i = empService.deletEmps(aaa);
            int p=empService.delelteErs(aaa);
            return i;
        }

        return 7;
    }

    /**
     * 修改员工
     * @param emp
     * @return
     */
    @RequestMapping("/admin/updateEmp")
    @ResponseBody
    public int updaEmp(Emp emp,HttpServletRequest request){
        String zid = request.getParameter("zid");
        //修改员工
        int i = empService.updateEmp(emp);
        if(i>0) {
            if (zid != null) {
                //修改角色
                int i1 = empService.updateER(Integer.parseInt(emp.getEid()), Integer.parseInt(zid));
                return i1;
            }
        }
        return i;
    }

    /**
     * 获得所有Roles
     * @param page
     * @param limit
     * @return
     */
    @RequestMapping("/admin/getRoles")
    @ResponseBody
    public Map<String,Object> getRolesAll(Integer page,Integer limit){
        Role role=new Role();
        PageInfo<Role> roleAll = empService.getRoleAll(role, page, limit);
        Map<String,Object> map=new HashMap<>();
        map.put("code",0);
        map.put("msg", "");
        map.put("count",roleAll.getTotal());
        map.put("data",roleAll.getList());
        return  map;
    }


    /**
     * 增加角色
     * @param role
     * @return
     */
    @RequestMapping("/admin/addRrole")
    @ResponseBody
  public  int addRoles(Role role){
        System.out.println(role);
      int i = empService.queryMAxRid();
      System.out.println(i);
      role.setRid(String.valueOf(i+1));
        int i1 = empService.addRole(role);
        return i1;
  }


    /**
     * 删除角色以及关系表
     * @param role
     * @return
     */
  @RequestMapping("/admin/delRole")
  @ResponseBody
  public  int deleteRole(Role role){
      System.out.println("输出role"+role);
      int i = empService.deleteRole(role.getRid());//删除角色
       int i1 = empService.deletEr(Integer.parseInt(role.getRid()));//删除关系表
       int i2 = empService.deleteRM(role.getRid());//删除角色和菜单表

      return i;
  }

  @RequestMapping("/admin/FpRole")
  @ResponseBody
  public List getM(Role role){
      System.out.println("获得的角色："+role);
      List<Menu> menussss = empService.getMenussss();
      List<Integer> mmid = empService.getmid(role.getRid());
      List<Object> list=new ArrayList<>();
      list.add(menussss);
      list.add(mmid);
      for (Object o : list) {
          System.out.println(o);
      }
      return list;
  }







}
