package com.JianxiLin.ssm.dao;

import com.JianxiLin.ssm.entity.GoodsLabels;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GLabelsDao {
    /**
     * 查看物品的标签（标记）————热门、.......
     * @param goodsId
     * @return
     */
    GoodsLabels selGLabelsByGoodsId(@Param("goodsId") Integer goodsId);

    /**
     * 获取所有物品的标签信息
     * @return
     */
    List<GoodsLabels> selAllGLabels();

    /***
     * 获取所有热门物品的id
     * @return
     */
    List<Integer> selHotLabelsGoodsId();
}
