package com.JianxiLin.ssm.service.impl;

import com.JianxiLin.ssm.dao.GLabelsDao;
import com.JianxiLin.ssm.dao.GTypeDao;
import com.JianxiLin.ssm.dao.GoodsDao;
import com.JianxiLin.ssm.dao.UserDao;
import com.JianxiLin.ssm.dto.GoodsPageDTO;
import com.JianxiLin.ssm.dto.GoodsWithUserDTO;
import com.JianxiLin.ssm.entity.Goods;
import com.JianxiLin.ssm.entity.User;
import com.JianxiLin.ssm.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private GoodsDao goodsDao;
    @Autowired
    private GTypeDao gTypeDao;
    @Autowired
    private UserDao userDao;
    @Autowired
    private GLabelsDao gLabelsDao;

    /**
     * 根据用户id 获取物品信息，附带其用户信息
     *
     * @param id
     * @return
     */
    @Override
    public GoodsWithUserDTO getGoodsWithUserById(int id) {
        Goods goods = goodsDao.selGoodsById(id);
        User user = userDao.selUserByAccountId(goods.getUserId());
        GoodsWithUserDTO goodsWithUserDTO = new GoodsWithUserDTO();
        goodsWithUserDTO.setGoods(goods);
        goodsWithUserDTO.setUser(user);

        return goodsWithUserDTO;

    }

    /**
     * 获取所有物品信息（带用户信息）
     *
     * @return
     */
    @Override
    public List<GoodsWithUserDTO> getAllGoodsWithUser() {
        List<GoodsWithUserDTO> goodsWithUserDTOs;
        List<Goods> goodsList = goodsDao.selAllGoods();

        goodsWithUserDTOs = toGoodsListWithUser(goodsList);

        return goodsWithUserDTOs;
    }

    /**
     * 获取热门物品信息
     *
     * @return
     */
    @Override
    public List<Goods> getHotGoods() {
        List<Integer> hotGoodsIds = gLabelsDao.selHotLabelsGoodsId();
        List<Goods> hotGoods = new ArrayList<>();
        for (Integer hotGoodsId : hotGoodsIds) {
            hotGoods.add(goodsDao.selGoodsById(hotGoodsId));
        }
        return hotGoods;
    }

    /**
     * 根据物品类型获取物品信息（分页获取）
     *
     * @param typeId 物品类型id
     * @param page 页码 (0 ~ *)
     * @param size 每页个数
     * @return
     */
    @Override
    public GoodsPageDTO getGoodsByType(Integer typeId, Integer page, Integer size) {
        //物品信息以及其页码按钮状态
        GoodsPageDTO goodsPageDTO = new GoodsPageDTO();

        //存储物品信息（带用户信息）
        List<GoodsWithUserDTO> dataList;

        if (typeId < 0  || typeId == null) {
            return goodsPageDTO;
        } else {

            //获取物品信息
            Integer start = page*size;
            Integer number = size;
            List<Goods> goodsList = goodsDao.selGoodsByType(typeId, start,number);
            dataList = toGoodsListWithUser(goodsList);
            goodsPageDTO.setShowGoodsList(dataList);

            //设置页码按钮状态
            int booksNum = goodsDao.selGoodsNumByType(typeId);
            goodsPageDTO.setShowStates(booksNum,page+1,size);
        }
        return goodsPageDTO;
    }


    /**
     * 为物品容器中每个物品信息添加其用户信息(拥有者信息)
     *
     * @param goodsList
     * @return
     */
    private List<GoodsWithUserDTO> toGoodsListWithUser(List<Goods> goodsList) {
        List<GoodsWithUserDTO> goodsWithUserList = new ArrayList<>();
        for (Goods g : goodsList) {
            GoodsWithUserDTO gWithU = new GoodsWithUserDTO();
            gWithU.setGoods(g);
            gWithU.setUser(userDao.selUserByAccountId(g.getUserId()));
            goodsWithUserList.add(gWithU);
        }
        return goodsWithUserList;
    }

}
