package com.zking.ssm.service;

import com.zking.ssm.model.Paper;
import org.springframework.stereotype.Service;

public interface PaperService {
    int deleteByPrimaryKey(String pid);

    int insert(Paper record);

    int insertSelective(Paper record);

    Paper selectByPrimaryKey(String pid);

    int updateByPrimaryKeySelective(Paper record);

    int updateByPrimaryKey(Paper record);
}