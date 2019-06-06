//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.zking.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zking.ssm.mapper.EmpMapper;
import com.zking.ssm.model.Emp;
import com.zking.ssm.model.Line;
import com.zking.ssm.model.Menu;
import com.zking.ssm.model.Role;
import com.zking.ssm.service.EmpService;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("empService")
public class EmpServiecImpl implements EmpService {
    @Autowired
    private EmpMapper empMapper;

    public EmpServiecImpl() {
    }

    @Override
    public int deleteByPrimaryKey(String var1) {
        return empMapper.deleteByPrimaryKey(var1);
    }

    @Override
    public int insert(Emp var1) {
        return 0;
    }

    @Override
    public int insertSelective(Emp var1) {
        return 0;
    }

    @Override
    public Emp selectByPrimaryKey(String var1) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Emp var1) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Emp var1) {
        return 0;
    }

    public Emp loginEmp(Emp emp) {
        return this.empMapper.loginEmp(emp);
    }

    public List<Menu> getMens(String eid) {
        return this.empMapper.getMens(eid);
    }



    public List<Menu> getMenus2(Emp emp) {
        List<Menu> results = new ArrayList();
        List<Menu> mens = this.empMapper.getMens(emp.getEid());
        if (mens != null && mens.size() > 0) {
            for(int i = 0; i < mens.size(); ++i) {
                if (((Menu)mens.get(i)).getPid().equals("0")) {
                    Menu menu = new Menu();
                    menu.setMid(((Menu)mens.get(i)).getMid());
                    menu.setMname(((Menu)mens.get(i)).getMname());
                    menu.setIcons(((Menu)mens.get(i)).getIcons());
                    menu.setHref(((Menu)mens.get(i)).getHref());
                    menu.setPerms(((Menu)mens.get(i)).getPerms());
                    menu.setMtype(((Menu)mens.get(i)).getMtype());
                    menu.setOrdernum(((Menu)mens.get(i)).getOrdernum());
                    menu.setSpread(((Menu)mens.get(i)).getSpread());
                    menu.setPid(((Menu)mens.get(i)).getPid());
                    List<Menu> menus2 = new ArrayList();

                    for(int j = 0; j < mens.size(); ++j) {
                        if (((Menu)mens.get(j)).getPid().equals(((Menu)mens.get(i)).getMid())) {
                            Menu menu2 = new Menu();
                            menu2.setMid(((Menu)mens.get(j)).getMid());
                            menu2.setMname(((Menu)mens.get(j)).getMname());
                            menu2.setIcons(((Menu)mens.get(j)).getIcons());
                            menu2.setHref(((Menu)mens.get(j)).getHref());
                            menu2.setPerms(((Menu)mens.get(j)).getPerms());
                            menu2.setMtype(((Menu)mens.get(j)).getMtype());
                            menu2.setOrdernum(((Menu)mens.get(j)).getOrdernum());
                            menu2.setSpread(((Menu)mens.get(j)).getSpread());
                            menu2.setPid(((Menu)mens.get(j)).getPid());
                            menus2.add(menu2);
                        }
                    }

                    menu.setMenuList(menus2);
                    results.add(menu);
                }
            }
        }

        return results;
    }

    @Override
    public int deleteEmpById(Integer id) {
        return empMapper.deleteEmpById(id);
    }

    @Override
    public int deletEr(Integer id) {
        return empMapper.deletEr(id);
    }

    @Override
    public PageInfo<Emp> getEmpAll(Emp emp, Integer page, Integer pageSize) {
        System.err.println("页码："+page);
        System.err.println("每页条数："+pageSize);
        PageHelper.startPage(page, pageSize);
        List<Emp> emps = empMapper.getEmps(emp);
        return new PageInfo<>(emps);
    }

    @Override
    public int deletEmps(List<Integer> integers) {
        return empMapper.deletEmps(integers);
    }

    @Override
    public int delelteErs(List<Integer> integers) {
        return empMapper.delelteErs(integers);
    }

    @Override
    public Emp getP(String ename) {
        return empMapper.getP(ename);
    }

    @Override
    public int updateEmp(Emp emp) {
        return empMapper.updateEmp(emp);
    }

    @Override
    public int updateER(Integer eid, Integer rid) {
        return empMapper.updateER(eid,rid);
    }

    @Override
    public List<Role> getRoles() {
        return empMapper.getRoles();
    }

    /**
     * 获得所有角色的通用分页
     * @param role
     * @param page
     * @param pageSize
     * @return
     */

    @Override
    public PageInfo<Role> getRoleAll(Role role, Integer page, Integer pageSize) {
        PageHelper.startPage(page, pageSize);
        List<Role> roles = empMapper.getRoles();
        return new PageInfo<>(roles);
    }

    @Override
    public int queryMAxRid() {
        return empMapper.queryMAxRid();
    }

    @Override
    public int addRole(Role role) {
        return empMapper.addRole(role);
    }

    @Override
    public int deleteRole(String rid) {
        return empMapper.deleteRole(rid);
    }

    @Override
    public int deleteRM(String rid) {
        return empMapper.deleteRM(rid);
    }

    @Override
    public List<Integer> getmid(String rid) {
        return empMapper.getmid(rid);
    }

    @Override
    public List<Menu> getMensss() {
        return empMapper.getMensss();
    }

    @Override
    public List<Menu> getMenussss() {

        List<Menu> results = new ArrayList();
        List<Menu> mens =empMapper.getMensss();
        if (mens != null && mens.size() > 0) {
            for(int i = 0; i < mens.size(); ++i) {
                if (((Menu)mens.get(i)).getPid().equals("0")) {
                    Menu menu = new Menu();
                    menu.setMid(((Menu)mens.get(i)).getMid());
                    menu.setMname(((Menu)mens.get(i)).getMname());
                    menu.setIcons(((Menu)mens.get(i)).getIcons());
                    menu.setHref(((Menu)mens.get(i)).getHref());
                    menu.setPerms(((Menu)mens.get(i)).getPerms());
                    menu.setMtype(((Menu)mens.get(i)).getMtype());
                    menu.setOrdernum(((Menu)mens.get(i)).getOrdernum());
                    menu.setSpread(((Menu)mens.get(i)).getSpread());
                    menu.setPid(((Menu)mens.get(i)).getPid());
                    List<Menu> menus2 = new ArrayList();

                    for(int j = 0; j < mens.size(); ++j) {
                        if (((Menu)mens.get(j)).getPid().equals(((Menu)mens.get(i)).getMid())) {
                            Menu menu2 = new Menu();
                            menu2.setMid(((Menu)mens.get(j)).getMid());
                            menu2.setMname(((Menu)mens.get(j)).getMname());
                            menu2.setIcons(((Menu)mens.get(j)).getIcons());
                            menu2.setHref(((Menu)mens.get(j)).getHref());
                            menu2.setPerms(((Menu)mens.get(j)).getPerms());
                            menu2.setMtype(((Menu)mens.get(j)).getMtype());
                            menu2.setOrdernum(((Menu)mens.get(j)).getOrdernum());
                            menu2.setSpread(((Menu)mens.get(j)).getSpread());
                            menu2.setPid(((Menu)mens.get(j)).getPid());
                            menus2.add(menu2);
                        }
                    }

                    menu.setMenuList(menus2);
                    results.add(menu);
                }
            }
        }

        return results;





    }


    public List<Emp> getEmps(Emp emp) {
        return this.empMapper.getEmps(emp);
    }

    public int addEmp(Emp emp) {
        return this.empMapper.addEmp(emp);
    }

    public int getMaxeid() {
        return this.empMapper.getMaxeid();
    }



    @Override
    public int addER(Integer eid,Integer rid) {
        return empMapper.addER(eid, rid);
    }





}
