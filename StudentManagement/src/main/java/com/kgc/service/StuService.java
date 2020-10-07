package com.kgc.service;

import com.kgc.pojo.Stu;

import java.util.List;

public interface StuService {
    List<Stu> selectAll();
    Stu getbyid(int id);
    int upd(Stu stu);

}
