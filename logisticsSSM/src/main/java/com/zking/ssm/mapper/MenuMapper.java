package com.zking.ssm.mapper;

import com.zking.ssm.model.Menu;
import org.springframework.stereotype.Service;

@Service
public interface MenuMapper {
    int deleteByPrimaryKey(String mid);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(String mid);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
}