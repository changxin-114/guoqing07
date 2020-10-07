package com.kgc.controller;

import com.kgc.pojo.Stu;
import com.kgc.service.StuService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class StuController {
    @Resource
    StuService stuService;

    @RequestMapping("/selectAll")
    public String selectAll(Model model){
        List<Stu> list = stuService.selectAll();
        model.addAttribute("list",list);
        return "index";
    }

    @RequestMapping("/cha")
    public String getbyid(int id,Model model){
        Stu stu = stuService.getbyid(id);
        model.addAttribute("stu",stu);
        return "upd";
    }

    @RequestMapping("/upd")
    public String upd(Stu stu,String sname,String sgender,int sage,String saddress,String semail){
        stu.setSname(sname);
        stu.setSgender(sgender);
        stu.setSage(sage);
        stu.setSaddress(saddress);
        stu.setSemail(semail);
        stuService.upd(stu);
        return "redirect:selectAll";
    }
}
