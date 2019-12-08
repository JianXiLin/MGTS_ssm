package com.JianxiLin.ssm.dao;

import com.JianxiLin.ssm.entity.Collectionperson;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CollectionDao {

    /**
     * 根据用户user_id查找收藏表
     * @param user_id
     * @return
     */
    List<Collectionperson> selCollectionByUserId(@Param("user_id") Integer user_id);
}
