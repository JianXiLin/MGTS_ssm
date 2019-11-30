package com.JianxiLin.ssm.dto;

import com.JianxiLin.ssm.entity.Goods;
import com.JianxiLin.ssm.entity.User;

public class GoodsWithUserDTO {
    private User user;
    private Goods goods;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    @Override
    public String toString() {
        return "GoodsWithUserDTO{" +
                "user=" + user +
                ", goods=" + goods +
                '}';
    }
}
