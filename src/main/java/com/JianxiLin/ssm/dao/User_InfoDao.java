package com.JianxiLin.ssm.dao;

import com.JianxiLin.ssm.entity.User_info;
import org.apache.ibatis.annotations.Param;

public interface User_InfoDao {

    /**
     * 根据用户user_id查找用户
     * @param user_id
     * @return
     */
    User_info selUserInfoByUserId(@Param("user_id") Integer user_id);

    /**
     * 插入新的用户其他信息
     * @param user_info
     * @return
     */
    void insUser_Info(@Param("user_info") User_info user_info);

    /**
     * 更新的用户其他信息
     * @param  user_info
     * @return
     */
    void updateUser_Info(@Param("user_info") User_info user_info);
}

