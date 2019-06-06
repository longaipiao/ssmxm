package com.zking.ssm.mapper;

import com.zking.ssm.model.Receiving;
import org.springframework.stereotype.Service;

@Service
public interface ReceivingMapper {
    int deleteByPrimaryKey(String rid);

    int insert(Receiving record);

    int insertSelective(Receiving record);

    Receiving selectByPrimaryKey(String rid);

    int updateByPrimaryKeySelective(Receiving record);

    int updateByPrimaryKey(Receiving record);
}