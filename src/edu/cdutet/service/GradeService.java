package edu.cdutet.service;

import edu.cdutet.entity.Grade;

import java.util.List;

public interface GradeService {
    void doAdd(Grade grade);

    List<Grade> listGrade();

    Grade selectidgrade(int id);

    void editGrade(Grade grade);

    void dodelete(int id);
}
