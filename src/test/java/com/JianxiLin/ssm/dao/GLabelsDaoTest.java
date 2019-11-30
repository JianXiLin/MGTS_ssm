package com.JianxiLin.ssm.dao;

import com.JianxiLin.ssm.entity.GoodsLabels;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-dao.xml")
public class GLabelsDaoTest {

    @Autowired
    private GLabelsDao gLabelsDao;

    @Test
    public void testSelGLabelsByGoodsId() {

        GoodsLabels goodsLabels = gLabelsDao.selGLabelsByGoodsId(1);
        System.out.println(goodsLabels.toString()+"--------------------------");
    }

    @Test
    public void testSelAllData(){
        List<GoodsLabels> goodsLabels = gLabelsDao.selAllGLabels();
        for(GoodsLabels goodsLabels1 : goodsLabels){
            System.out.println(goodsLabels1.toString());
        }
    }


    @Test
    public void testSelAllHotGData(){
        List<Integer> integers = gLabelsDao.selHotLabelsGoodsId();
        for(Integer i : integers){
            System.out.println(i.toString());
        }
    }
}
