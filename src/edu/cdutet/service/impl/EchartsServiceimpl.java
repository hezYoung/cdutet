package edu.cdutet.service.impl;

import edu.cdutet.entity.Grade;
import edu.cdutet.mapper.EchartsMapper;
import edu.cdutet.mapper.ExameMapper;
import edu.cdutet.service.EchartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@Service
public class EchartsServiceimpl implements EchartsService {
    @Autowired
    private EchartsMapper echartsMapper;

    /**
     * 查询统计
     * @return
     */
    public List<Grade> getAll(){
    return echartsMapper.getAll();

}

     }

