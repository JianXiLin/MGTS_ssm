package com.JianxiLin.ssm.dao;

import com.JianxiLin.ssm.entity.Chat;
import com.JianxiLin.ssm.entity.MyCollection;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HistoryDao {

    void insChat(@Param("chat") Chat chat);

    void updChat(@Param("chat") Chat chat);

    List<Chat> selChatsByGoodsId(Integer goodsId);

    void insMyCollection(@Param("myCollection") MyCollection myCollection);

    void delMyCollection(@Param("userId")Integer userId,
                       @Param("goodsId")Integer goodsId);
}