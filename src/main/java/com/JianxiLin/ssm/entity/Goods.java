package com.JianxiLin.ssm.entity;

public class Goods {
    private int id;
    private String name;
    private String describe;
    private int price;
    private String transConditions;
    private String gmtCreate;
    private String gmtUpdate;
    private String goodsPicture;
    private String goodsVideo;
    private String tradingStatus;
    private String typeName;
    private String userId;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getTransConditions() {
        return transConditions;
    }

    public void setTransConditions(String transConditions) {
        this.transConditions = transConditions;
    }

    public String getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(String gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public String getGmtUpdate() {
        return gmtUpdate;
    }

    public void setGmtUpdate(String gmtUpdate) {
        this.gmtUpdate = gmtUpdate;
    }

    public String getGoodsPicture() {
        return goodsPicture;
    }

    public void setGoodsPicture(String goodsPicture) {
        this.goodsPicture = goodsPicture;
    }

    public String getGoodsVideo() {
        return goodsVideo;
    }

    public void setGoodsVideo(String goodsVideo) {
        this.goodsVideo = goodsVideo;
    }

    public String getTradingStatus() {
        return tradingStatus;
    }

    public void setTradingStatus(String tradingStatus) {
        this.tradingStatus = tradingStatus;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", describe='" + describe + '\'' +
                ", price=" + price +
                ", transConditions='" + transConditions + '\'' +
                ", gmtCreate='" + gmtCreate + '\'' +
                ", gmtUpdate='" + gmtUpdate + '\'' +
                ", goodsPicture='" + goodsPicture + '\'' +
                ", goodsVideo='" + goodsVideo + '\'' +
                ", tradingStatus='" + tradingStatus + '\'' +
                ", typeName='" + typeName + '\'' +
                ", userId='" + userId + '\'' +
                '}';
    }



}

