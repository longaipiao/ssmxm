package com.zking.ssm.service;

import com.github.pagehelper.PageInfo;
import com.zking.ssm.model.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

public interface UserService {
    int deleteByPrimaryKey(Integer uid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer uid);

    int updateByPrimaryKeySelective(User record);



    /**
     * 用户登录的方法
     * @param user
     * @return
     */
    boolean UserLogin(User user);

    /**
     * 注册的方法
     */
    int regUser(User user);

    /**
     * 查询所有用户带模糊查的方法
     */
    public PageInfo<User> FindUserlike(User user,Integer page,Integer limit);

    /**
     *  解封用户的方法  状态为1
     */
    public int updateState1(Integer uid);

    /**
     *  封禁用户的方法   状态为2
     */
    public int updateState2(Integer uid);

    /**
     * 编辑的方法
     * @param record
     * @return
     */
    int updateByPrimaryKey(User record);
}