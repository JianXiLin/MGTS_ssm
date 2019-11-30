package com.JianxiLin.ssm.dto;

public class WechatAuthStateDTO {
    private String uuid;
    private int errcode;
    private boolean isAuth;
    private String token;

    private WechatUserDTO wechatUserDTO;

    public WechatUserDTO getWechatUserDTO() {
        return wechatUserDTO;
    }

    public void setWechatUserDTO(WechatUserDTO wechatUserDTO) {
        this.wechatUserDTO = wechatUserDTO;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public int getErrcode() {
        return errcode;
    }

    public void setErrcode(int errcode) {
        this.errcode = errcode;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public boolean isAuth() {
        return isAuth;
    }

    public void setAuth(boolean auth) {
        isAuth = auth;
    }

    @Override
    public String toString() {
        return "WechatAuthStateDTO{" +
                "uuid='" + uuid + '\'' +
                ", errcode=" + errcode +
                ", isAuth=" + isAuth +
                ", wechatUserDTO=" + wechatUserDTO +
                '}';
    }
}
