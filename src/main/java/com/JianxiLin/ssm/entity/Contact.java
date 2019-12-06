package com.JianxiLin.ssm.entity;

public class Contact {
    private Integer id;
    private Integer userId;
    private String wechat;
    private Integer phoneNumber;
    private Integer qq;

    public Contact() {
    }

    public Contact(Integer id, Integer userId, String wechat, Integer phoneNumber, Integer qq) {
        this.id = id;
        this.userId = userId;
        this.wechat = wechat;
        this.phoneNumber = phoneNumber;
        this.qq = qq;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getWechat() {
        return wechat;
    }

    public void setWechat(String wechat) {
        this.wechat = wechat;
    }

    public Integer getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(Integer phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Integer getQq() {
        return qq;
    }

    public void setQq(Integer qq) {
        this.qq = qq;
    }
}
