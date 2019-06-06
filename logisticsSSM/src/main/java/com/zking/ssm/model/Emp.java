package com.zking.ssm.model;

import java.io.Serializable;

public class Emp implements Serializable {
    private String eid;

    private String ename;

    private String epassword;

    private String esex;

    private String regtime;

    private Integer state;

    private String eaddress;

    private String etel;

    private Integer elevel;

    private Role role;

    private static final long serialVersionUID = 1L;

    public Emp(){}
    public String getEid() {
        return eid;
    }

    public void setEid(String eid) {
        this.eid = eid == null ? null : eid.trim();
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename == null ? null : ename.trim();
    }

    public String getEpassword() {
        return epassword;
    }

    public void setEpassword(String epassword) {
        this.epassword = epassword == null ? null : epassword.trim();
    }

    public String getEsex() {
        return esex;
    }

    public void setEsex(String esex) {
        this.esex = esex == null ? null : esex.trim();
    }

    public String getRegtime() {
        return regtime;
    }

    public void setRegtime(String regtime) {
        this.regtime = regtime == null ? null : regtime.trim();
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getEaddress() {
        return eaddress;
    }

    public void setEaddress(String eaddress) {
        this.eaddress = eaddress == null ? null : eaddress.trim();
    }

    public String getEtel() {
        return etel;
    }

    public void setEtel(String etel) {
        this.etel = etel == null ? null : etel.trim();
    }

    public Integer getElevel() {
        return elevel;
    }

    public void setElevel(Integer elevel) {
        this.elevel = elevel;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Emp{" +
                "eid='" + eid + '\'' +
                ", ename='" + ename + '\'' +
                ", epassword='" + epassword + '\'' +
                ", esex='" + esex + '\'' +
                ", regtime='" + regtime + '\'' +
                ", state=" + state +
                ", eaddress='" + eaddress + '\'' +
                ", etel='" + etel + '\'' +
                ", elevel=" + elevel +
                ", role=" + role +
                '}';
    }
}