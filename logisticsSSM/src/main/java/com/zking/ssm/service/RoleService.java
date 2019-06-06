package com.zking.ssm.service;

import com.zking.ssm.model.Role;
import org.springframework.stereotype.Service;

public interface RoleService {
    int deleteByPrimaryKey(String rid);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(String rid);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
}