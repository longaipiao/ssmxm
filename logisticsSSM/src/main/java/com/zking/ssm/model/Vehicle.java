package com.zking.ssm.model;

import java.io.Serializable;

public class Vehicle implements Serializable {
    private String vid;

    private Integer vheight;

    private String eid;

    private Integer vstate;

    private String vaddress;

    private static final long serialVersionUID = 1L;

    public String getVid() {
        return vid;
    }

    public void setVid(String vid) {
        this.vid = vid == null ? null : vid.trim();
    }

    public Integer getVheight() {
        return vheight;
    }

    public void setVheight(Integer vheight) {
        this.vheight = vheight;
    }

    public String getEid() {
        return eid;
    }

    public void setEid(String eid) {
        this.eid = eid == null ? null : eid.trim();
    }

    public Integer getVstate() {
        return vstate;
    }

    public void setVstate(Integer vstate) {
        this.vstate = vstate;
    }

    public String getVaddress() {
        return vaddress;
    }

    public void setVaddress(String vaddress) {
        this.vaddress = vaddress == null ? null : vaddress.trim();
    }
}