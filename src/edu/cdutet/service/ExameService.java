package edu.cdutet.service;

import edu.cdutet.entity.Exame;

import java.util.List;

public interface ExameService {
    void doAdd(Exame exame);

    List<Exame> listExame();

    Exame selectidexame(int id);

    void editExame(Exame exame);

    void dodelete(int id);

    List<Exame> sousuolist();
}
