package com.zking.ssm.model;

import java.io.Serializable;

public class Line implements Serializable {
    private String lid;

    private String lstart;

    private String lend;

    private String startdate;

    private String enddate;

    private String lnote;

    private Integer lweight;

    private Integer trunksize;

    private String trains;

    private String lway;

    private String voyage;

    private String train;

    private String lserial;

    private static final long serialVersionUID = 1L;

    public String getLid() {
        return lid;
    }

    public void setLid(String lid) {
        this.lid = lid == null ? null : lid.trim();
    }

    public String getLstart() {
        return lstart;
    }

    public void setLstart(String lstart) {
        this.lstart = lstart == null ? null : lstart.trim();
    }

    public String getLend() {
        return lend;
    }

    public void setLend(String lend) {
        this.lend = lend == null ? null : lend.trim();
    }

    public String getStartdate() {
        return startdate;
    }

    public void setStartdate(String startdate) {
        this.startdate = startdate == null ? null : startdate.trim();
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate == null ? null : enddate.trim();
    }

    public String getLnote() {
        return lnote;
    }

    public void setLnote(String lnote) {
        this.lnote = lnote == null ? null : lnote.trim();
    }

    public Integer getLweight() {
        return lweight;
    }

    public void setLweight(Integer lweight) {
        this.lweight = lweight;
    }

    public Integer getTrunksize() {
        return trunksize;
    }

    public void setTrunksize(Integer trunksize) {
        this.trunksize = trunksize;
    }

    public String getTrains() {
        return trains;
    }

    public void setTrains(String trains) {
        this.trains = trains == null ? null : trains.trim();
    }

    public String getLway() {
        return lway;
    }

    public void setLway(String lway) {
        this.lway = lway == null ? null : lway.trim();
    }

    public String getVoyage() {
        return voyage;
    }

    public void setVoyage(String voyage) {
        this.voyage = voyage == null ? null : voyage.trim();
    }

    public String getTrain() {
        return train;
    }

    public void setTrain(String train) {
        this.train = train == null ? null : train.trim();
    }

    public String getLserial() {
        return lserial;
    }

    public void setLserial(String lserial) {
        this.lserial = lserial == null ? null : lserial.trim();
    }

    @Override
    public String toString() {
        return "Line{" +
                "lid='" + lid + '\'' +
                ", lstart='" + lstart + '\'' +
                ", lend='" + lend + '\'' +
                ", startdate='" + startdate + '\'' +
                ", enddate='" + enddate + '\'' +
                ", lnote='" + lnote + '\'' +
                ", lweight=" + lweight +
                ", trunksize=" + trunksize +
                ", trains='" + trains + '\'' +
                ", lway='" + lway + '\'' +
                ", voyage='" + voyage + '\'' +
                ", train='" + train + '\'' +
                ", lserial='" + lserial + '\'' +
                '}';
    }
}