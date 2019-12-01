package com.JianxiLin.ssm.dto;

public class PendingGoodsDTO {
    private String userAccountId;
    private Integer goodsId;
    private String goodsName;
    private Integer price;
    private String goodsDescribe;
    private String transConditions;
    private String goodsTypeName;
    private String goodsPicture;

    @Override
    public String toString() {
        return "PendingGoodsDTO{" +
                "userAccountId='" + userAccountId + '\'' +
                ", goodsId=" + goodsId +
                ", goodsName='" + goodsName + '\'' +
                ", price=" + price +
                ", goodsDescribe='" + goodsDescribe + '\'' +
                ", transConditions='" + transConditions + '\'' +
                ", goodsTypeName='" + goodsTypeName + '\'' +
                ", goodsPicture='" + goodsPicture + '\'' +
                '}';
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getUserAccountId() {
        return userAccountId;
    }

    public void setUserAccountId(String userAccountId) {
        this.userAccountId = userAccountId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getGoodsDescribe() {
        return goodsDescribe;
    }

    public void setGoodsDescribe(String goodsDescribe) {
        this.goodsDescribe = goodsDescribe;
    }

    public String getTransConditions() {
        return transConditions;
    }

    public void setTransConditions(String transConditions) {
        this.transConditions = transConditions;
    }

    public String getGoodsTypeName() {
        return goodsTypeName;
    }

    public void setGoodsTypeName(String goodsTypeName) {
        this.goodsTypeName = goodsTypeName;
    }

    public String getGoodsPicture() {
        return goodsPicture;
    }

    public void setGoodsPicture(String goodsPicture) {
        this.goodsPicture = goodsPicture;
    }
}
