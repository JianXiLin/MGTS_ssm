package com.JianxiLin.ssm.dao;

import com.JianxiLin.ssm.entity.Goods;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface GoodsDao {
    /***
     * 根据物品id查询某一个物品信息
     * @param id
     * @return
     */
    Goods selGoodsById(@Param("id") Integer id);

    /**
     * 获取所有物品信息
     * @return
     */
    List<Goods> selAllGoods();

    /***
     * 根据物品类型名称获取物品信息
     * @return
     */
    List<Goods> selGoodsByType(@Param("typeId") Integer typeId,@Param("start") Integer page,@Param("number") Integer size);

    /**
     * 获取某类型物品的总数
     * @param typeId 物品类型
     * @return
     */
    Integer selGoodsNumByType(@Param("typeId") Integer typeId);
    /***
     * 插入物品信息
     */
    void insGoods(@Param("goods")Goods goods);

    /***
     * 更新物品信息
     * @param goods
     */
    void updateGoods(@Param("goods") Goods goods);

    /**
     * 根据ID查询信息详情
     * @param id
     * @return
     */
    List<Goods> selGoodById(@Param("id") Integer id);

    /**
     * 根据用户的accountId查询信息详情
     * @param userAccountId
     * @return
     */
    List<Goods> selGoodByUserId(@Param("userAccountId") String userAccountId);

}
