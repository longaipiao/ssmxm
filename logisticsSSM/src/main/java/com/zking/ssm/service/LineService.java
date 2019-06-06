package com.zking.ssm.service;

import com.github.pagehelper.PageInfo;
import com.zking.ssm.model.Line;
import org.springframework.stereotype.Service;

import java.util.List;


public interface LineService {

    int deleteByPrimaryKey(String lid);

    int insertSelective(Line record);

    Line selectByPrimaryKey(String lid);

    int updateByPrimaryKeySelective(Line record);

    /**
     * 修改的方法
     * @param record
     * @return
     */
    int updateByLid(Line record);

    /**
     * 根据始发地和目的地查询铁路路线的信息
     * @return
     */
    //List<Line> getLineAll(Line line);
    PageInfo<Line> getLineAll(Line line, Integer page, Integer pageSize);

    /**
     * 根据线路id查询线路信息
     */
    List<Line> getLineByLid(String lid);

    /**
     * 增加线路的方法
     */
    public int addLine(Line line);

    /**
     * 查询所有线路的方法
     */
    public PageInfo<Line> getThLineAll(Line line, Integer page, Integer limit);

    /**
     * 运营的方法   状态为1
     */

    public int updateline1(String lid);

    /**
     * 停止运营的方法   状态为2
     */

    public int updateline2(String lid);

}