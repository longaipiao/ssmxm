package com.zking.ssm.service.impl;

import com.zking.ssm.mapper.ReceivingMapper;
import com.zking.ssm.model.Receiving;
import com.zking.ssm.service.ReceivingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @email 2417902780@qq.com
 * @author:阿飘
 * @company 飘飘公司
 * @create 2019-06-06 19:11
 */
@Service
public class ReceivingServiceImpl implements ReceivingService {
    @Autowired
    private ReceivingMapper receivingMapper;

    @Override
    public int deleteByPrimaryKey(String rid) {
        return 0;
    }

    @Override
    public int insert(Receiving record) {
        return 0;
    }

    @Override
    public int insertSelective(Receiving record) {
        return 0;
    }

    @Override
    public Receiving selectByPrimaryKey(String rid) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Receiving record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Receiving record) {
        return 0;
    }

    /**
     * 添加收货方的信息
     * @param receiving
     * @return
     */
    @Override
    public int addReceiving(Receiving receiving) {
        return receivingMapper.addReceiving(receiving);
    }
}
