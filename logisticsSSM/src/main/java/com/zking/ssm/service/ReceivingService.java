package com.zking.ssm.service;

import com.zking.ssm.model.Receiving;
import org.springframework.stereotype.Service;

public interface ReceivingService {
    int deleteByPrimaryKey(String rid);

    int insert(Receiving record);

    int insertSelective(Receiving record);

    Receiving selectByPrimaryKey(String rid);

    int updateByPrimaryKeySelective(Receiving record);

    int updateByPrimaryKey(Receiving record);
}