package com.zking.ssm.service;

import com.zking.ssm.model.Goods;


public interface GoodsService {
    int deleteByPrimaryKey(String gid);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(String gid);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);
}