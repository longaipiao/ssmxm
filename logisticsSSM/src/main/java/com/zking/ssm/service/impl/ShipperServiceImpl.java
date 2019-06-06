package com.zking.ssm.service.impl;

import com.zking.ssm.mapper.ShipperMapper;
import com.zking.ssm.model.Shipper;
import com.zking.ssm.service.ShipperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @email 2417902780@qq.com
 * @author:阿飘
 * @company 飘飘公司
 * @create 2019-06-06 18:56
 */
@Service
public class ShipperServiceImpl implements ShipperService {
    @Autowired
    private ShipperMapper shipperMapper;

    @Override
    public int deleteByPrimaryKey(String sid) {
        return 0;
    }

    @Override
    public int insert(Shipper record) {
        return 0;
    }

    @Override
    public int insertSelective(Shipper record) {
        return 0;
    }

    @Override
    public Shipper selectByPrimaryKey(String sid) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Shipper record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Shipper record) {
        return 0;
    }

    /**
     * 增加发货人的方法
     * @param shipper
     * @return
     */
    @Override
    public int addShipper(Shipper shipper) {
        return shipperMapper.addShipper(shipper);
    }
}
