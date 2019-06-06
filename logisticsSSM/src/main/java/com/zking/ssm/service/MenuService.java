package com.zking.ssm.service;

import com.zking.ssm.model.Menu;

public interface MenuService {
    int deleteByPrimaryKey(String mid);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(String mid);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
}