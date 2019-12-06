package com.JianxiLin.ssm.dto;

import com.JianxiLin.ssm.entity.Chat;
import com.JianxiLin.ssm.entity.User;

public class ChatWithUserDTO {
    private Chat chat;
    private User user;

    public Chat getChat() {
        return chat;
    }

    public void setChat(Chat chat) {
        this.chat = chat;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
