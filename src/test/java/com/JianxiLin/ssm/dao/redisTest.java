package com.JianxiLin.ssm.dao;

import com.JianxiLin.ssm.dao.cache.RedisDao;
import com.JianxiLin.ssm.dto.GoodsWithUserDTO;
import com.JianxiLin.ssm.entity.Goods;
import com.JianxiLin.ssm.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @author JianxiLin
 * @date 6.16 - 0:09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-dao.xml")
public class redisTest {
    
    @Autowired
    RedisDao redisDao;

    @Test
    public void testCache(){
        User user = new User(2,"2","2","2","2",2L,2L
                ,"2","2","2","2");
        Goods goods1 = new Goods();
        goods1.setId(3);
        GoodsWithUserDTO goods = new GoodsWithUserDTO(user, goods1);

        String s = redisDao.putGoods(goods);
        System.out.println(s);

        GoodsWithUserDTO goods2 = redisDao.getGoods(3);
        System.out.println(goods2.toString());
    }
    
}
