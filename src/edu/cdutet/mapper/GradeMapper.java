package edu.cdutet.mapper;

import edu.cdutet.entity.Grade;
import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface GradeMapper {
    void save(@Param("grade")Grade grade);

    List<Grade> list();

    Grade queryGradeByid(int id);

    void esitGrade(Grade grade);

    void deleteGrade(int id);

}
