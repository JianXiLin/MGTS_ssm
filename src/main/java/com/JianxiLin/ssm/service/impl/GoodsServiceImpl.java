package com.JianxiLin.ssm.service.impl;

import com.JianxiLin.ssm.dao.*;
import com.JianxiLin.ssm.dao.cache.RedisDao;
import com.JianxiLin.ssm.dto.GoodsPageDTO;
import com.JianxiLin.ssm.dto.GoodsWithUserDTO;
import com.JianxiLin.ssm.dto.PendingGoodsDTO;
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
    @Autowired
    private UserOtherInfoDao userOtherInfoDao;

    @Autowired
    RedisDao redisDao;
    /**
     * 根据用户id 获取物品信息，附带其用户信息
     *  检查缓存，缓存中存在数据则从缓存获取
     * @param id
     * @return
     */
    @Override
    public GoodsWithUserDTO getGoodsWithUserById(int id) {
        GoodsWithUserDTO goodsWithUserDTO = null;
        if(null == (goodsWithUserDTO=redisDao.getGoods(id))){
            Goods goods = goodsDao.selGoodsById(id);
            User user = userDao.selUserByAccountId(goods.getUserId());
            goodsWithUserDTO.setGoods(goods);
            goodsWithUserDTO.setUser(user);
        }
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
     *  添加redis缓存
     * @return
     */
    @Override
    public List<GoodsWithUserDTO> getHotGoods() {
        List<Integer> hotGoodsIds = gLabelsDao.selHotLabelsGoodsId();
        List<GoodsWithUserDTO> goodsWithUserDTOList = new ArrayList<>();

        for (Integer hotGoodsId : hotGoodsIds) {
            GoodsWithUserDTO goodsInCache = null;

            if (null != (goodsInCache = redisDao.getGoods(hotGoodsId))){
                // 缓存中存在该物品信息
                goodsWithUserDTOList.add(goodsInCache);
            }else {
                // 缓存中不存在该物品信息，则添加到缓存中
                goodsInCache = toGoodsWithUser(goodsDao.selGoodsById(hotGoodsId));
                redisDao.putGoods(goodsInCache);
                goodsWithUserDTOList.add(goodsInCache);
            }
        }
        return goodsWithUserDTOList;
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
     * 用户挂起物品或者修改物品
     * @param pendingGoodsDTO
     * @return 返回物品类型id
     */
    @Override
    public Integer pendingOrUpdGoods(PendingGoodsDTO pendingGoodsDTO){
        Goods insGoods = toGoods(pendingGoodsDTO);
        Goods DBGoods = goodsDao.selGoodsById(insGoods.getId());
        if(DBGoods != null){
            insGoods.setTradingStatus(DBGoods.getTradingStatus());
        }else{
            insGoods.setTradingStatus("0");
        }


        insOrUpdateGoods(insGoods);
        return insGoods.getType();
    }

    /***
     * 更加物品id查询物品信息
     * @param id
     * @return
     */
    @Override
    public List<Goods> getGoodWithUserById(int id) {
        List<Goods> list=goodsDao.selGoodById(id);
        return list;
    }

    @Override
    public List<Goods> getGoodsByUserId(String userAccountId) {
        List<Goods> list=goodsDao.selGoodByUserId(userAccountId);
        return list;
    }

    private void insOrUpdateGoods(Goods goods) {
        Goods DBGoods = goodsDao.selGoodsById(goods.getId());
        if(DBGoods != null && goods.getId()!= 0){
            //更新物品信息
            Goods updGoods = goods;

            updGoods.setGmtCreate(DBGoods.getGmtCreate());
            updGoods.setGmtUpdate(System.currentTimeMillis());

            goodsDao.updateGoods(updGoods);
        }else {
            //添加物品信息
            Goods insGodds = goods;
            insGodds.setGmtCreate(System.currentTimeMillis());
            insGodds.setGmtUpdate(System.currentTimeMillis());

            goodsDao.insGoods(insGodds);

        }
    }

    /**
     * 将PendingGoodsDTO 中的对象提取到 Goods对象中
     * @param pendingGoodsDTO
     * @return
     */
    public Goods toGoods(PendingGoodsDTO pendingGoodsDTO){
        Goods goods = new Goods();
        if(pendingGoodsDTO.getGoodsId()!=null && pendingGoodsDTO.getGoodsId() != 0){
            goods.setId(pendingGoodsDTO.getGoodsId());
        }
        goods.setType(gTypeDao.selTypeIdByName(pendingGoodsDTO.getGoodsTypeName()));
        goods.setTypeName(pendingGoodsDTO.getGoodsTypeName());
        goods.setGoodsName(pendingGoodsDTO.getGoodsName());
        goods.setGoodsDescribe(pendingGoodsDTO.getGoodsDescribe());
        goods.setGoodsPicture(pendingGoodsDTO.getGoodsPicture());
        goods.setPrice(pendingGoodsDTO.getPrice());
        goods.setTransConditions(pendingGoodsDTO.getTransConditions());
        goods.setUserId(pendingGoodsDTO.getUserAccountId());
        goods.setGoodsVideo(null);

        return goods;
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

    private GoodsWithUserDTO toGoodsWithUser(Goods goods) {

        GoodsWithUserDTO gWithU = new GoodsWithUserDTO();
        gWithU.setGoods(goods);
        gWithU.setUser(userDao.selUserByAccountId(goods.getUserId()));

        return gWithU;
    }

}
