package edu.cdutet.service.impl;

import edu.cdutet.entity.Exame;
import edu.cdutet.mapper.ExameMapper;
import edu.cdutet.service.ExameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ExameServiceimpl implements ExameService {
    @Autowired
    private ExameMapper exameMapper;
    @Override

    public void doAdd(Exame exame) {
        exameMapper.save(exame);
    }

    @Override
    public List<Exame> listExame() {
        List<Exame> list =exameMapper.list();
        return list;
    }

    @Override
    public Exame selectidexame(int id) {
        Exame exame=exameMapper.queryExameByid(id);
        return exame;
    }

    @Override
    public void editExame(Exame exame) {
        exameMapper.esitExame(exame);
    }

    @Override
    public void dodelete(int id) {
        exameMapper.deleteExame(id);
    }

    @Override
    public List<Exame> sousuolist() {
        List<Exame> list =exameMapper.sousuolist();
        return list;

    }


}
