package com.JianxiLin.ssm.service;

import com.JianxiLin.ssm.entity.User_info;

public interface User_InfoService {
    /**
     * 根据user_id用户信息
     *
     * @param
     * @return
     */
    User_info getGoodsWithUserById(int user_id);

    /**
     * 新插入用户其他信息
     *
     * @param
     * @return
     */
    void creatUser_Info(User_info user_info);

    /**
     * 更新用户其他信息
     *
     * @param
     * @return
     */
    void updateUser_Info(User_info user_info);
}
