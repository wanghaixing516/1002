package com.kgc.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import com.kgc.entity.Meetingroom;
import com.kgc.service.MeetingroomService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class IndexContrller {
    @Resource
    MeetingroomService meetingroomService;
    @RequestMapping("/")
    public String index(Model model, HttpSession session){
        List<Meetingroom> meetingrooms = meetingroomService.selectAll();
        model.addAttribute("meetingrooms",meetingrooms);
        return "index";
    }
    @RequestMapping("/addjin")
    public String addjin(Meetingroom meetingroom){
        return "add";
}
    @RequestMapping("/add")
    public String add(Meetingroom meetingroom){
            meetingroomService.add(meetingroom);
            return "redirect:/";
        }
    }
   /* @RequestMapping("/add")
    public String add(Reply_Detail reply_detail){
        if(reply_detail.getAuthor()!=null&&reply_detail.getAuthor().isEmpty()==false){
            Integer id = reply_detail.getInvid();

            int add = reply_detailService.add(reply_detail);

            return "redirect:/huifu?invid="+id;
        }else {
            Integer id = reply_detail.getInvid();
            reply_detail.setAuthor("匿名用户");
            int add = reply_detailService.add(reply_detail);

            return "redirect:/huifu?invid=" + id;
        }
}*/
