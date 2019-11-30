package com.JianxiLin.ssm.entity;

public class User {
    private int id;
    private String name;
    private String accountId;
    private String token;
    private String avaterUrl;
    private Long gmtCreate;
    private Long gmtUpdate;
    private String  city;
    /*省份*/
    private String province;
    private String sex;
    private String country;

    public User() {
    }

    public User(int id, String name, String accountId, String token, String avaterUrl, Long gmtCreate, Long gmtUpdate, String city, String province, String sex, String country) {
        this.id = id;
        this.name = name;
        this.accountId = accountId;
        this.token = token;
        this.avaterUrl = avaterUrl;
        this.gmtCreate = gmtCreate;
        this.gmtUpdate = gmtUpdate;
        this.city = city;
        this.province = province;
        this.sex = sex;
        this.country = country;
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

    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getAvaterUrl() {
        return avaterUrl;
    }

    public void setAvaterUrl(String avaterUrl) {
        this.avaterUrl = avaterUrl;
    }

    public Long getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Long gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public Long getGmtUpdate() {
        return gmtUpdate;
    }

    public void setGmtUpdate(Long gmtUpdate) {
        this.gmtUpdate = gmtUpdate;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", accountId='" + accountId + '\'' +
                ", token='" + token + '\'' +
                ", avaterUrl='" + avaterUrl + '\'' +
                ", gmtCreate=" + gmtCreate +
                ", gmtUpdate=" + gmtUpdate +
                ", city='" + city + '\'' +
                ", province='" + province + '\'' +
                ", sex='" + sex + '\'' +
                ", country='" + country + '\'' +
                '}';
    }
}
