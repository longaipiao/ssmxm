package com.zking.ssm.mapper;

import com.zking.ssm.model.Receiving;
import org.springframework.stereotype.Service;

@Service
public interface ReceivingMapper {
    int deleteByPrimaryKey(String rid);

    int insertSelective(Receiving record);

    Receiving selectByPrimaryKey(String rid);

    int updateByPrimaryKeySelective(Receiving record);

    int updateByPrimaryKey(Receiving record);

    /**
     * 添加收货方的信息
     */
    int addReceiving(Receiving record);
}