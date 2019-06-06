

package com.zking.ssm.mapper;

import com.zking.ssm.model.Emp;
import com.zking.ssm.model.Menu;
import com.zking.ssm.model.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface EmpMapper {
    /**
     *
     * @param var1
     * @return
     */
    int deleteByPrimaryKey(String var1);

    int insert(Emp var1);

    int insertSelective(Emp var1);

    //Emp selectByPrimaryKey(String var1);

    int updateByPrimaryKeySelective(Emp var1);

    int updateByPrimaryKey(Emp var1);

    /**
     * 登录
     * @param var1
     * @return
     */
    Emp loginEmp(Emp var1);

    /**
     * 获得所有菜单
     * @param var1
     * @return
     */
    List<Menu> getMens(String var1);
    List<Menu> getMensss();

    /**
     * 获得所有员工，根据地域
     * @param emp
     * @return
     */

    List<Emp> getEmps(Emp emp);
  /*  Map<String,Object> getEmps(Emp emp);*/



    /**
     * 增加员工
     * @param var1
     * @return
     */
    int addEmp(Emp var1);

    /**
     * 获得最大id
     * @return
     */
    int getMaxeid();

    /**
     * 增加角色
     * @param eid，@param rid
     * @return
     */
    int addER(@Param("eid") Integer eid, @Param("rid") Integer rid);

    /**
     * 根据id删除
     * @param id
     * @return
     */
    int deleteEmpById(Integer id);

    /**
     * 删除er表
     * @param id
     * @return
     */
    int deletEr(Integer id);



    /**
     *  批量删除
     * @param integers
     * @return
     */
    public int deletEmps(List<Integer> integers);


    /**
     * 批量删除Er表
     * @param integers
     * @return
     */
    int delelteErs(List<Integer> integers);

    /**
     * 根据用户名获取所有
     * @param ename
     * @return
     */
    Emp getP(String ename);

    /**
     * 根据Id修改员工
     * @param emp
     * @return
     */
    int updateEmp(Emp emp);


    /**
     * 根据Id修改员工角色
     * @param eid,rid
     * @return
     */
    int updateER(@Param("eid") Integer eid, @Param("rid") Integer rid);

    /**
     * 获得所有角色
     * @return
     */
    List<Role> getRoles();

    /**
     * 查找最大的rid
     * @return
     */
    int queryMAxRid();

    /**
     * 增加角色
     * @param role
     * @return
     */
    int addRole(Role role);

    /**
     * 删除角色
     * @param rid
     * @return
     */
    int deleteRole(String rid);

    /**
     * 删除角色的同时删除菜单
     * @param rid
     * @return
     */
   int deleteRM(String rid);

    /**
     * 根据rid获取所有的rid
     * @param rid
     * @return
     */
   List<Integer> getmid(String rid);

}
