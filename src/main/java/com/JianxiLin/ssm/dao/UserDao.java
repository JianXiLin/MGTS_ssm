package com.JianxiLin.ssm.dao;

import com.JianxiLin.ssm.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

@Component
public interface UserDao {
    /**
     * 插入用户信息
     * @param user
     * @return
     */
    void insUser(@Param("user") User user);

    /**
     * 更新用户信息
     * @param user
     * @return
     */
    boolean updateUser(@Param("user")User user);

    /**
     * 根据用户accountId查找用户
     * @param accountId 唯一表示（如wechat中的openId）
     * @return
     */
    User selUserByAccountId(@Param("accountId")String accountId);

    /**
     * 根据用户token查找用户
     * @param token 用户浏览器识别用户（存放于cookie中）
     * @return
     */
    User selUserByToken(@Param("token")String token);


    /**
     * 插入测试表格数据
     *
     * @param name
     * @param col
     */
    void insTest(@Param("name")String name,@Param("col")String col);
}
