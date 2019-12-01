package com.JianxiLin.ssm.entity;

public class Goods {
    private int id;
    private String goodsName;
    private String goodsDescribe;
    private int price;
    private String transConditions;
    private long gmtCreate;
    private long gmtUpdate;
    private String goodsPicture;
    private String goodsVideo;
    private String tradingStatus;
    private Integer type;
    private String typeName;
    private String userId;


    public Goods() {
    }

    public Goods(String goodsName, String goodsDescribe, int price, String transConditions, long gmtCreate, long gmtUpdate, String goodsPicture, String goodsVideo, String tradingStatus, Integer type, String userId) {
        this.goodsName = goodsName;
        this.goodsDescribe = goodsDescribe;
        this.price = price;
        this.transConditions = transConditions;
        this.gmtCreate = gmtCreate;
        this.gmtUpdate = gmtUpdate;
        this.goodsPicture = goodsPicture;
        this.goodsVideo = goodsVideo;
        this.tradingStatus = tradingStatus;
        this.type = type;
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "id=" + id +
                ", goodsName='" + goodsName + '\'' +
                ", goodsDescribe='" + goodsDescribe + '\'' +
                ", price=" + price +
                ", transConditions='" + transConditions + '\'' +
                ", gmtCreate=" + gmtCreate +
                ", gmtUpdate=" + gmtUpdate +
                ", goodsPicture='" + goodsPicture + '\'' +
                ", goodsVideo='" + goodsVideo + '\'' +
                ", tradingStatus='" + tradingStatus + '\'' +
                ", type=" + type +
                ", typeName='" + typeName + '\'' +
                ", userId='" + userId + '\'' +
                '}';
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsDescribe() {
        return goodsDescribe;
    }

    public void setGoodsDescribe(String goodsDescribe) {
        this.goodsDescribe = goodsDescribe;
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

    public long getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(long gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public long getGmtUpdate() {
        return gmtUpdate;
    }

    public void setGmtUpdate(long gmtUpdate) {
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

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}

