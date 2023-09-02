package edu.cdutet.mapper;

import edu.cdutet.entity.Exame;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ExameMapper {
    void save(@Param("exame")Exame exame);

    List<Exame> list();

    Exame queryExameByid(int id);

    void esitExame(Exame exame);

    void deleteExame(int id);

    List<Exame> sousuolist( );
}
