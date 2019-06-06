package com.zking.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zking.ssm.mapper.LineMapper;
import com.zking.ssm.model.Line;
import com.zking.ssm.service.LineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @email 2417902780@qq.com
 * @author:阿飘
 * @company 飘飘公司
 * @create 2019-05-31 22:26
 */
@Service
public class LineServiceImpl implements LineService {

    @Autowired
    private LineMapper lineMapper;

    @Override
    public int deleteByPrimaryKey(String lid) {
        return lineMapper.deleteByPrimaryKey(lid);
    }

    @Override
    public int insertSelective(Line record) {
        return lineMapper.insertSelective(record);
    }

    @Override
    public Line selectByPrimaryKey(String lid) {
        return lineMapper.selectByPrimaryKey(lid);
    }

    @Override
    public int updateByPrimaryKeySelective(Line record) {
        return lineMapper.updateByPrimaryKeySelective(record);
    }

    /**
     * 修改的方法
     * @param record
     * @return
     */
    @Override
    public int updateByLid(Line record) {
        return lineMapper.updateByLid(record);
    }


    /**
     * 根据始发地和目的地查询铁路路线的信息
     * @param line
     * @return
     */
   // @Override
    //public List<Line> getLineAll(Line line) {
      //  return lineMapper.getLineAll(line);
   // }

   @Override
    public PageInfo<Line> getLineAll(Line line, Integer page, Integer pageSize) {
       System.err.println("页码："+page);
       System.err.println("每页条数："+pageSize);
        PageHelper.startPage(page, pageSize);
        List<Line> lines = lineMapper.getLineAll(line);
        return new PageInfo<>(lines);
    }
    /**
     * 根据线路id查询线路信息
     */
    @Override
    public List<Line> getLineByLid(String lid) {
        return lineMapper.getLineByLid(lid);
    }

    /**
     * 增加线路的方法
     * @param line
     * @return
     */
    @Override
    public int addLine(Line line) {
        return lineMapper.addLine(line);
    }

    /**
     * 查询所有线路的方法
     * @return
     */
    @Override
    public PageInfo<Line> getThLineAll(Line line, Integer page, Integer limit) {
        PageHelper.startPage(page,limit);
        List<Line> lines = lineMapper.getThLineAll(line);
        return new PageInfo<>(lines);
    }

    @Override
    public int updateline1(String lid) {
        return lineMapper.updateline1(lid);
    }

    @Override
    public int updateline2(String lid) {
        return lineMapper.updateline2(lid);
    }


}
