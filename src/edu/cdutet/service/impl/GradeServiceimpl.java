package edu.cdutet.service.impl;

import edu.cdutet.entity.Grade;
import edu.cdutet.mapper.GradeMapper;
import edu.cdutet.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GradeServiceimpl implements GradeService {
    @Autowired
    private GradeMapper gradeMapper;
    @Override
    public void doAdd(Grade grade) {
        gradeMapper.save(grade);
    }

    @Override
    public List<Grade> listGrade() {
        List<Grade> list =gradeMapper.list();
        return list;
    }

    @Override
    public Grade selectidgrade(int id) {
        Grade grade=gradeMapper.queryGradeByid(id);
        return grade;
    }

    @Override
    public void editGrade(Grade grade) {
        gradeMapper.esitGrade(grade);
    }

    @Override
    public void dodelete(int id) {
        gradeMapper.deleteGrade(id);
    }


}
