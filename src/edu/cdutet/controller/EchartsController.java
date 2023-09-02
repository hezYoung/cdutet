package edu.cdutet.controller;

import edu.cdutet.entity.Grade;

import edu.cdutet.service.EchartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/report")
public class EchartsController {
    @Autowired
    private EchartsService echartsService;
    @RequestMapping("/add")
    public String add(){
        return "system/echarts";
    }

   @RequestMapping("getAll")
   @ResponseBody
    public Map getAll(){
       List<Grade> list=echartsService.getAll();
       //转数组
        Integer[] numArr=new Integer[list.size()]; //存储次数
        String[] pointArr=new String[list.size()];//标题
        int i=0;
       for (Grade dl : list){
           numArr[i]=dl.getNum();
           pointArr[i]=dl.getPoint();
           i++;
       }

 Map<String,Object> map =new HashMap<String,Object>();
        map.put("points",pointArr);
       map.put("nums",numArr);
       return map;
    }




}
