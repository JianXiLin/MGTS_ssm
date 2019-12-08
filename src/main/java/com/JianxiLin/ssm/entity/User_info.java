package com.JianxiLin.ssm.entity;

public class User_info {

    private int id;
    private int userId;
    private String wechat;
    private String phoneNumber;
    private String qq;

    public User_info(){


    }

    public User_info(int id, int userId, String wechat, String phoneNumber, String qq) {
        this.id = id;
        this.userId = userId;
        this.wechat = wechat;
        this.phoneNumber = phoneNumber;
        this.qq = qq;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
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

    @Override
    public String toString() {
        return "User_info{" +
                "id=" + id +
                ", userId=" + userId +
                ", wechat='" + wechat + '\'' +
                ", phoneNumber=" + phoneNumber +
                ", qq=" + qq +
                '}';
    }
}
