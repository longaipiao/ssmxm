package com.zking.ssm.model;

import java.io.Serializable;

public class Price implements Serializable {
    private String pid;

    private Integer uid;

    private String pweight;

    private Integer landfreight;

    private Integer servicefee;

    private Integer totalmoney;

    private String payment;

    private Integer pstate;

    private static final long serialVersionUID = 1L;

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid == null ? null : pid.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getPweight() {
        return pweight;
    }

    public void setPweight(String pweight) {
        this.pweight = pweight == null ? null : pweight.trim();
    }

    public Integer getLandfreight() {
        return landfreight;
    }

    public void setLandfreight(Integer landfreight) {
        this.landfreight = landfreight;
    }

    public Integer getServicefee() {
        return servicefee;
    }

    public void setServicefee(Integer servicefee) {
        this.servicefee = servicefee;
    }

    public Integer getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(Integer totalmoney) {
        this.totalmoney = totalmoney;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment == null ? null : payment.trim();
    }

    public Integer getPstate() {
        return pstate;
    }

    public void setPstate(Integer pstate) {
        this.pstate = pstate;
    }

    public Price() {
    }

    public Price(String pid, Integer uid, String pweight, Integer landfreight, Integer servicefee, Integer totalmoney, String payment, Integer pstate) {
        this.pid = pid;
        this.uid = uid;
        this.pweight = pweight;
        this.landfreight = landfreight;
        this.servicefee = servicefee;
        this.totalmoney = totalmoney;
        this.payment = payment;
        this.pstate = pstate;
    }

    @Override
    public String toString() {
        return "Price{" +
                "pid='" + pid + '\'' +
                ", uid=" + uid +
                ", pweight='" + pweight + '\'' +
                ", landfreight=" + landfreight +
                ", servicefee=" + servicefee +
                ", totalmoney=" + totalmoney +
                ", payment='" + payment + '\'' +
                ", pstate=" + pstate +
                '}';
    }

    public Price(String pid, Integer uid, String pweight, Integer landfreight, Integer servicefee, Integer totalmoney) {
        this.pid = pid;
        this.uid = uid;
        this.pweight = pweight;
        this.landfreight = landfreight;
        this.servicefee = servicefee;
        this.totalmoney = totalmoney;
    }

    public Price(String pid, Integer uid, String pweight, Integer landfreight, Integer servicefee, Integer totalmoney, Integer pstate) {
        this.pid = pid;
        this.uid = uid;
        this.pweight = pweight;
        this.landfreight = landfreight;
        this.servicefee = servicefee;
        this.totalmoney = totalmoney;
        this.pstate = pstate;
    }
}