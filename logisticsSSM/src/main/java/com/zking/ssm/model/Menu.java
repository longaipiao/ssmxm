package com.zking.ssm.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Menu implements Serializable {
    private String mid;

    private String mname;

    private String mtype;

    private String pid;

    private String icons;

    private String href;

    private String perms;

    private Integer spread;

    private List<Integer> mmmmid=new ArrayList<>();
    private Integer ordernum;
    private List<Menu> menuList=new ArrayList<>();

    public List<Integer> getMmmmid() {
        return mmmmid;
    }

    public void setMmmmid(List<Integer> mmmmid) {
        this.mmmmid = mmmmid;
    }

    public List<Menu> getMenuList() {
        return menuList;
    }

    public void setMenuList(List<Menu> menuList) {
        this.menuList = menuList;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    private static final long serialVersionUID = 1L;

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid == null ? null : mid.trim();
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname == null ? null : mname.trim();
    }

    public String getMtype() {
        return mtype;
    }

    public void setMtype(String mtype) {
        this.mtype = mtype == null ? null : mtype.trim();
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid == null ? null : pid.trim();
    }

    public String getIcons() {
        return icons;
    }

    public void setIcons(String icons) {
        this.icons = icons == null ? null : icons.trim();
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href == null ? null : href.trim();
    }

    public String getPerms() {
        return perms;
    }

    public void setPerms(String perms) {
        this.perms = perms == null ? null : perms.trim();
    }

    public Integer getSpread() {
        return spread;
    }

    public void setSpread(Integer spread) {
        this.spread = spread;
    }

    public Integer getOrdernum() {
        return ordernum;
    }

    public void setOrdernum(Integer ordernum) {
        this.ordernum = ordernum;
    }

    @Override
    public String toString() {
        return "Menu{" +
                "mid='" + mid + '\'' +
                ", mname='" + mname + '\'' +
                ", mtype='" + mtype + '\'' +
                ", pid='" + pid + '\'' +
                ", icons='" + icons + '\'' +
                ", href='" + href + '\'' +
                ", perms='" + perms + '\'' +
                ", spread=" + spread +
                ", mmmmid=" + mmmmid +
                ", ordernum=" + ordernum +
                ", menuList=" + menuList +
                '}';
    }
}