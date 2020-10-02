package com.kgc.service.impl;

import com.kgc.entity.Meetingroom;
import com.kgc.mapper.MeetingroomMapper;
import com.kgc.service.MeetingroomService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("meetingroomService")
public class MeetingroomServiceImpl implements MeetingroomService {
    @Resource
    MeetingroomMapper meetingroomMapper;
    @Override
    public List<Meetingroom> selectAll() {
        return meetingroomMapper.selectByExample(null);
    }
    @Override
    public void add(Meetingroom meetingroom) {
        meetingroomMapper.insert(meetingroom);
    }
}
