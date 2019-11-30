package com.JianxiLin.ssm.entity;

public class GoodsLabels {
    private int id;
    private int goodsId;
    private int isHot;

    @Override
    public String toString() {
        return "GoodsLabels{" +
                "id=" + id +
                ", goodsId=" + goodsId +
                ", isHot=" + isHot +
                '}';
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

    public int getIsHot() {
        return isHot;
    }

    public void setIsHot(int isHot) {
        this.isHot = isHot;
    }
}
