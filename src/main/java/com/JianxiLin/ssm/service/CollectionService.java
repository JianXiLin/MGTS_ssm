package com.JianxiLin.ssm.service;

import com.JianxiLin.ssm.entity.Collectionperson;

import java.util.List;

public interface CollectionService {

    /**
     * 根据用户user_id查找收藏表
     * @param
     * @return
     */
    List<Collectionperson> getCollectionByUserId(int user_id);
}
