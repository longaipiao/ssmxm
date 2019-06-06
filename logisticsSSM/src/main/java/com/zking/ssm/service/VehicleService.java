package com.zking.ssm.service;

import com.zking.ssm.model.Vehicle;
import org.springframework.stereotype.Service;

public interface VehicleService {
    int deleteByPrimaryKey(String vid);

    int insert(Vehicle record);

    int insertSelective(Vehicle record);

    Vehicle selectByPrimaryKey(String vid);

    int updateByPrimaryKeySelective(Vehicle record);

    int updateByPrimaryKey(Vehicle record);
}