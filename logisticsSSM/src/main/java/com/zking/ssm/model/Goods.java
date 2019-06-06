package com.zking.ssm.model;

import org.springframework.stereotype.Component;

import java.io.Serializable;
@Component
public class Goods implements Serializable {
    private String gid;

    private Integer uid;

    private String gname;

    private String pingyingname;

    private String packaging;

    private Integer number;

    private Integer gweight;

    private Integer gvolume;

    private static final long serialVersionUID = 1L;

    public String getGid() {
        return gid;
    }

    public void setGid(String gid) {
        this.gid = gid == null ? null : gid.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname == null ? null : gname.trim();
    }

    public String getPingyingname() {
        return pingyingname;
    }

    public void setPingyingname(String pingyingname) {
        this.pingyingname = pingyingname == null ? null : pingyingname.trim();
    }

    public String getPackaging() {
        return packaging;
    }

    public void setPackaging(String packaging) {
        this.packaging = packaging == null ? null : packaging.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getGweight() {
        return gweight;
    }

    public void setGweight(Integer gweight) {
        this.gweight = gweight;
    }

    public Integer getGvolume() {
        return gvolume;
    }

    public void setGvolume(Integer gvolume) {
        this.gvolume = gvolume;
    }
}