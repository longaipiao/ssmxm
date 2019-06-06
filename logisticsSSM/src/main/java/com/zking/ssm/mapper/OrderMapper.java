package com.zking.ssm.mapper;

import com.zking.ssm.model.Order;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderMapper {
    int deleteByPrimaryKey(String oid);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(String oid);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

    List<Order> selectByUid(Integer uid);

}