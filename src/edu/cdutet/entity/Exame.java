package edu.cdutet.entity;

public class Exame {
    private Integer id;
    private String exameName;
    private String exameTime;
    private String fuzheRen;


    public String getFuzheRen() {
        return fuzheRen;
    }

    public void setFuzheRen(String fuzheRen) {
        this.fuzheRen = fuzheRen;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getExameName() {
        return exameName;
    }

    public void setExameName(String exameName) {
        this.exameName = exameName;
    }

    public String getExameTime() {
        return exameTime;
    }

    public void setExameTime(String exameTime) {
        this.exameTime = exameTime;
    }

}
