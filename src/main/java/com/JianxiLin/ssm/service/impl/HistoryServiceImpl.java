package com.JianxiLin.ssm.service.impl;

import com.JianxiLin.ssm.dao.HistoryDao;
import com.JianxiLin.ssm.dao.UserDao;
import com.JianxiLin.ssm.dto.ChatWithUserDTO;
import com.JianxiLin.ssm.entity.Chat;
import com.JianxiLin.ssm.entity.MyCollection;
import com.JianxiLin.ssm.entity.User;
import com.JianxiLin.ssm.service.HistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class HistoryServiceImpl implements HistoryService {

    @Autowired
    private HistoryDao historyDao;
    @Autowired
    private UserDao userDao;

    @Override
    public boolean insChatHistory(Integer senderId, Integer goodsId, String content) {
        Chat chat = new Chat();
        if (senderId !=null&&goodsId!=null&&content!=null){
            chat.setContent(content);
            chat.setGoodsId(goodsId);
            chat.setSenderId(senderId);
            chat.setGmtCreate(System.currentTimeMillis());
            chat.setGmtUpdate(chat.getGmtCreate());
            historyDao.insChat(chat);
            return true;
        }
        return false;
    }

    @Override
    public List<ChatWithUserDTO> selChatHistory(Integer goodsId) {
        List<ChatWithUserDTO> chatWithUserDTOS = new ArrayList<>();
        if(goodsId!=null){
            List<Chat> chats = historyDao.selChatsByGoodsId(goodsId);
            for (Chat c:chats){
                ChatWithUserDTO chatWithUserDTO = new ChatWithUserDTO();
                User user = userDao.selUserById(c.getSenderId());

                chatWithUserDTO.setChat(c);
                chatWithUserDTO.setUser(user);
                chatWithUserDTOS.add(chatWithUserDTO);
            }
        }

        return chatWithUserDTOS;
    }

    @Override
    public void insCollectionHistory(Integer userId, Integer goodsId ){
        MyCollection insCollection = new MyCollection();
        if(userId != null && goodsId !=null){
            MyCollection DBCollection = historyDao.selMyCollection(userId, goodsId);
            if(null ==DBCollection){
                //插入收藏信息
                insCollection.setUserId(userId);
                insCollection.setGoodsId(goodsId);
                insCollection.setGmtCreate(System.currentTimeMillis());
                insCollection.setGmtUpdate(insCollection.getGmtCreate());
            }else {
                //修改收藏时间
                insCollection = DBCollection;
                insCollection.setGmtUpdate(System.currentTimeMillis());
            }

            historyDao.insMyCollection(insCollection);
        }
    }

    @Override
    public void delCollectionHistory(Integer userId, Integer goodsId) {
        if(userId != null && goodsId !=null){
            historyDao.delMyCollection(userId,goodsId);
        }
    }

    @Override
    public MyCollection selCollectionHistory(Integer userId, Integer goodsId) {
        if(userId != null && goodsId !=null){
            MyCollection myCollection = historyDao.selMyCollection(userId, goodsId);
            return myCollection;
        }
        return null;
    }
}
