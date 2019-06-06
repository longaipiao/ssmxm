package com.zking.ssm.model;

import java.io.Serializable;

public class Role implements Serializable {
    private String rid;

    private String rname;

    private static final long serialVersionUID = 1L;

    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid == null ? null : rid.trim();
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname == null ? null : rname.trim();
    }

    @Override
    public String toString() {
        return "Role{" +
                "rid='" + rid + '\'' +
                ", rname='" + rname + '\'' +
                '}';
    }
}