package com.zking.ssm.service.impl;

import com.zking.ssm.mapper.PriceMapper;
import com.zking.ssm.model.Price;
import com.zking.ssm.service.PriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("priceService")
public class PriceServiceImpl implements PriceService {

    @Autowired
    private PriceMapper priceMapper;

    @Override
    public int deleteByPrimaryKey(String pid) {
        return priceMapper.deleteByPrimaryKey(pid);
    }


    @Override
    public int insertSelective(Price record) {
        return priceMapper.insertSelective(record);
    }

    @Override
    public Price selectByPrimaryKey(String pid) {
        return priceMapper.selectByPrimaryKey(pid);
    }

    @Override
    public int updateByPrimaryKeySelective(Price record) {
        return priceMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Price record) {
        return priceMapper.updateByPrimaryKey(record);
    }



    /**
     * 添加价格的方法
     * @param record
     * @return
     */
    @Override
    public int insert(Price record) {
        return priceMapper.insert(record);
    }
}
