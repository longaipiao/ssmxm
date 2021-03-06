package com.zking.ssm.service.impl;

import com.zking.ssm.mapper.OrderMapper;
import com.zking.ssm.model.Order;
import com.zking.ssm.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public int deleteByPrimaryKey(String oid) {
        return orderMapper.deleteByPrimaryKey(oid);
    }

    @Override
    public int insertSelective(Order record) {
        return orderMapper.insertSelective(record);
    }

    @Override
    public Order selectByPrimaryKey(String oid) {
        return orderMapper.selectByPrimaryKey(oid);
    }

    @Override
    public int updateByPrimaryKeySelective(Order record) {
        return orderMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Order record) {
        return orderMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Order> selectByUid(Integer uid) {
        return orderMapper.selectByUid(uid
        );
    }

//    @Override
//    public Order selectByTJCX(Integer uid, String oid, String blno, String qyz, String mdz) {
//        return orderMapper.selectByTJCX(uid,oid,blno,qyz,mdz);
//    }


    /**
     * 添加订单的方法
     * @param record
     * @return
     */
    @Override
    public int insert(Order record) {
        return orderMapper.insert(record);
    }
}
