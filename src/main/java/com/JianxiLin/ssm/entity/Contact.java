package com.JianxiLin.ssm.entity;

public class Contact {
    private Integer id;
    private Integer userId;
    private String wechat;
    private String phoneNumber;
    private String qq;

    public Contact() {
    }

    public Contact(Integer userId, String wechat, String phoneNumber, String qq) {
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

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }
}
