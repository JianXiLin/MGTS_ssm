package com.JianxiLin.ssm.entity;

public class Collectionperson {
    private int id;
    private int goodsId;
    private int userId;
    private long gmtCreat;
    private long gmtUpdate;

    public Collectionperson(){

    }

    public Collectionperson(int id, int goodsId, int userId, long gmtCreat, long gmtUpdate) {
        this.id = id;
        this.goodsId = goodsId;
        this.userId = userId;
        this.gmtCreat = gmtCreat;
        this.gmtUpdate = gmtUpdate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(int goodsId) {
        this.goodsId = goodsId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public long getGmtCreat() {
        return gmtCreat;
    }

    public void setGmtCreat(long gmtCreat) {
        this.gmtCreat = gmtCreat;
    }

    public long getGmtUpdate() {
        return gmtUpdate;
    }

    public void setGmtUpdate(long gmtUpdate) {
        this.gmtUpdate = gmtUpdate;
    }

    @Override
    public String toString() {
        return "Collectionperson{" +
                "id=" + id +
                ", goodsId=" + goodsId +
                ", userId=" + userId +
                ", gmtCreat=" + gmtCreat +
                ", gmtUpdate=" + gmtUpdate +
                '}';
    }
}
