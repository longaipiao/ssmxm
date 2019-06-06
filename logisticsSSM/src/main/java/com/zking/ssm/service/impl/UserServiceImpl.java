package com.zking.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zking.ssm.mapper.UserMapper;
import com.zking.ssm.model.User;
import com.zking.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @email 2417902780@qq.com
 * @author:阿飘
 * @company 飘飘公司
 * @create 2019-06-02 19:01
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public int deleteByPrimaryKey(Integer uid) {
        return 0;
    }

    @Override
    public int insert(User record) {
        return 0;
    }

    @Override
    public int insertSelective(User record) {
        return 0;
    }

    @Override
    public User selectByPrimaryKey(Integer uid) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(User record) {
        return 0;
    }



    /**
     * 用户登录的方法
     * @param user
     * @return
     */
    @Override
    public boolean UserLogin(User user) {
        return userMapper.UserLogin(user);
    }

    /**
     * 用户注册的方法
     * @param user
     */
    @Override
    public int regUser(User user) {
        return userMapper.regUser(user);
    }

    /**
     * 查询所有用户带模糊查的方法
     * @param user
     * @return
     */
    @Override
    public PageInfo<User> FindUserlike(User user, Integer page, Integer limit) {
        PageHelper.startPage(page,limit);
        List<User> users = userMapper.FindUserlike(user);
        return new PageInfo<>(users);
    }

    /**
     *  解封用户的方法  状态为1
     * @param uid
     * @return
     */
    @Override
    public int updateState1(Integer uid) {
        System.err.println("uid是："+uid);
        return userMapper.updateState1(uid);
    }

    /**
     * 封禁用户的方法   状态为2
     * @param uid
     * @return
     */
    @Override
    public int updateState2(Integer uid) {
        System.err.println("uid是："+uid);
        return userMapper.updateState2(uid);
    }

    /**
     * 编辑的方法
     * @param record
     * @return
     */
    @Override
    public int updateByPrimaryKey(User record) {
        return userMapper.updateByPrimaryKey(record);
    }
}
