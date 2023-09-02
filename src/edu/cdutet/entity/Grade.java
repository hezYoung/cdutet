package edu.cdutet.entity;

public class Grade {
    private Integer id;
    private String gradeName;
    private Integer num;
    private String point;
    private String jieTime;
    private String dierZhen;
    private String dierjieTime;


    public int getNum() {
        return num;
    }
    public void setNum(Integer num) {
        this.num = num;
    }

    public String getJieTime() {
        return jieTime;
    }

    public void setJieTime(String jieTime) {
        this.jieTime = jieTime;
    }

    public String getDierZhen() {
        return dierZhen;
    }

    public void setDierZhen(String dierZhen) {
        this.dierZhen = dierZhen;
    }

    public String getDierjieTime() {
        return dierjieTime;
    }

    public void setDierjieTime(String dierjieTime) {
        this.dierjieTime = dierjieTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGradeName() {
        return gradeName;
    }

    public void setGradeName(String gradeName) {
        this.gradeName = gradeName;
    }

    public String getPoint() {
        return point;
    }

    public void setPoint(String point) {
        this.point = point;
    }
}
