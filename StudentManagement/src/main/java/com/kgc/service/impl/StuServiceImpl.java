package com.kgc.service.impl;

import com.kgc.mapper.StuMapper;
import com.kgc.pojo.Stu;
import com.kgc.service.StuService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("stuService")
public class StuServiceImpl implements StuService {
    @Resource
    StuMapper stuMapper;

    @Override
    public List<Stu> selectAll() {
        return stuMapper.selectByExample(null);
    }

    @Override
    public Stu getbyid(int id) {
        return stuMapper.selectByPrimaryKey(id);
    }

    @Override
    public int upd(Stu stu) {
        return stuMapper.updateByPrimaryKeySelective(stu);
    }
}
