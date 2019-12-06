package com.JianxiLin.ssm.service;

import com.JianxiLin.ssm.dto.ChatWithUserDTO;
import com.JianxiLin.ssm.entity.MyCollection;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface HistoryService{

    boolean insChatHistory(Integer senderId, Integer goodsId, String content);
    
    List<ChatWithUserDTO> selChatHistory(Integer goodsId);

    void insCollectionHistory(Integer userId,Integer goodsId);

    void delCollectionHistory(Integer userId,Integer goodsId);

    MyCollection selCollectionHistory(Integer userId,Integer goodsId);
}
