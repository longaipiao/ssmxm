package com.zking.ssm.service.impl;

import com.zking.ssm.mapper.GoodsMapper;
import com.zking.ssm.model.Goods;
import com.zking.ssm.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @email 2417902780@qq.com
 * @author:阿飘
 * @company 飘飘公司
 * @create 2019-06-06 19:15
 */
@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private GoodsMapper goodsMapper;
    @Override
    public int deleteByPrimaryKey(String gid) {
        return 0;
    }

    @Override
    public int insertSelective(Goods record) {
        return 0;
    }

    @Override
    public Goods selectByPrimaryKey(String gid) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Goods record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Goods record) {
        return 0;
    }

    /**
     * 添加货物的方法
     * @param record
     * @return
     */
    @Override
    public int addGoods(Goods record) {
        return goodsMapper.addGoods(record);
    }
}
