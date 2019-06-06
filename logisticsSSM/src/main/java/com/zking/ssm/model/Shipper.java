package com.zking.ssm.model;

import java.io.Serializable;

public class Shipper implements Serializable {
    private String sid;

    private String sname;

    private String pingyinsname;

    private String rid;

    private String stel;

    private String pickdate;

    private Integer quantity;

    private String saddress;

    private String sdate;

    private String goodname;

    private String snote;

    private static final long serialVersionUID = 1L;

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid == null ? null : sid.trim();
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public String getPingyinsname() {
        return pingyinsname;
    }

    public void setPingyinsname(String pingyinsname) {
        this.pingyinsname = pingyinsname == null ? null : pingyinsname.trim();
    }

    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid == null ? null : rid.trim();
    }

    public String getStel() {
        return stel;
    }

    public void setStel(String stel) {
        this.stel = stel == null ? null : stel.trim();
    }

    public String getPickdate() {
        return pickdate;
    }

    public void setPickdate(String pickdate) {
        this.pickdate = pickdate == null ? null : pickdate.trim();
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public String getSaddress() {
        return saddress;
    }

    public void setSaddress(String saddress) {
        this.saddress = saddress == null ? null : saddress.trim();
    }

    public String getSdate() {
        return sdate;
    }

    public void setSdate(String sdate) {
        this.sdate = sdate == null ? null : sdate.trim();
    }

    public String getGoodname() {
        return goodname;
    }

    public void setGoodname(String goodname) {
        this.goodname = goodname == null ? null : goodname.trim();
    }

    public String getSnote() {
        return snote;
    }

    public void setSnote(String snote) {
        this.snote = snote == null ? null : snote.trim();
    }

    @Override
    public String toString() {
        return "Shipper{" +
                "sid='" + sid + '\'' +
                ", sname='" + sname + '\'' +
                ", pingyinsname='" + pingyinsname + '\'' +
                ", rid='" + rid + '\'' +
                ", stel='" + stel + '\'' +
                ", pickdate='" + pickdate + '\'' +
                ", quantity=" + quantity +
                ", saddress='" + saddress + '\'' +
                ", sdate='" + sdate + '\'' +
                ", goodname='" + goodname + '\'' +
                ", snote='" + snote + '\'' +
                '}';
    }

    public Shipper() {
    }

    public Shipper(String sid, String sname, String stel, Integer quantity, String saddress, String goodname, String snote) {
        this.sid = sid;
        this.sname = sname;
        this.stel = stel;
        this.quantity = quantity;
        this.saddress = saddress;
        this.goodname = goodname;
        this.snote = snote;
    }
}