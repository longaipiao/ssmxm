package com.zking.ssm.mapper;

import com.zking.ssm.model.Line;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface LineMapper {
    int deleteByPrimaryKey(String lid);

    int insert(Line record);

    int insertSelective(Line record);

    Line selectByPrimaryKey(String lid);

    int updateByPrimaryKeySelective(Line record);

    int updateByPrimaryKey(Line record);

    /**
     * 根据始发地和目的地查询铁路路线的信息
     * @return
     */
    List<Line> getLineAll(Line line);

    /**
     * 根据线路id查询线路信息
     */
    List<Line> getLineByLid(String lid);


}