package com.JianxiLin.ssm.service;

import com.JianxiLin.ssm.dto.GoodsPageDTO;
import com.JianxiLin.ssm.dto.GoodsWithUserDTO;
import com.JianxiLin.ssm.dto.PendingGoodsDTO;
import com.JianxiLin.ssm.entity.Goods;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface GoodsService {

    /**
     * 根据id查询物品信息，包含用户信息
     *
     * @param
     * @return
     */
    GoodsWithUserDTO getGoodsWithUserById(int id);

    /***
     * 获取所有物品信息，包含用户信息
     * @return
     */
    List<GoodsWithUserDTO> getAllGoodsWithUser();

    /**
     * 获取热门物品信息
     *
     * @return
     */
    List<GoodsWithUserDTO> getHotGoods();

    /**
     * 获取某类型物品(书、生活用品......) --分页
     *
     * @param typeId 物品名称id
     * @param page 页码
     * @param size 每页内容数量
     * @return
     */
    GoodsPageDTO getGoodsByType(Integer typeId, Integer page, Integer size);

    /***
     *  用户挂起/修改物品信息
     * @param pendingGoodsDTO
     * @return
     */
    Integer pendingOrUpdGoods(PendingGoodsDTO pendingGoodsDTO);

    /**
     * 根据id查询物品信息
     *
     * @param
     * @return
     */
    List<Goods>  getGoodWithUserById(int id);

}
