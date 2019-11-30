package com.JianxiLin.ssm.dao;

import com.JianxiLin.ssm.entity.Goods;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-dao.xml")
public class GoodsTest {
    @Autowired
    private GoodsDao goodsDao;

    @Test
    public void testSelGoodsNumByType() {

        Integer num = goodsDao.selGoodsNumByType(1);

        System.out.println(num);

    }


    @Test
    public void testSelGoodsByType(){
        System.out.println("data---------------------------------------------");
        List<Goods> goodsList = goodsDao.selGoodsByType(1, 1, 1);
        for (Goods g:goodsList) {
            System.out.println(g.toString());
        }
    }


}
