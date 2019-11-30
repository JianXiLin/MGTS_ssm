package com.JianxiLin.ssm.dao;

import com.JianxiLin.ssm.entity.Goods;
import com.JianxiLin.ssm.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * 
 * @author yingjun
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-dao.xml")
public class UserDaoTest {

    @Autowired
    private UserDao userDao;
    @Autowired
    private GoodsDao goodsDao;
    @Autowired
    private GTypeDao gTypeDao;
	
	@Test
	public void testInsUser() {
		User user = new User(2,"2","2","2","2",2L,2L
				,"2","2","2","2");
		userDao.insUser(user);
		System.out.println("--------------------------");
	}

	@Test
	public void testUpdateUser(){
		User user = new User(2,"2","2","2","2",2L,2L
				,"2","2","0","2");
		userDao.updateUser(user);
		System.out.println("updateUser--------");
	}

	@Test
	public void testSelUserByAccountId(){
		User user = userDao.selUserByAccountId("onYXl1eV5atvcTGk-Mj660Q3QsKA");
		System.out.println(user.toString()+"---------");
	}

	@Test
	public void testSelUserByToken(){
		User user = userDao.selUserByToken("0d9de551-1c23-4812-a34f-26025779966c");
		System.out.println(user.toString()+"---------");
	}

	@Test
	public void testInsTest(){
		userDao.insTest("test0200","5");
		System.out.println("test0200".indexOf("test02"));
	}

	@Test
	public void testSelGoodsById(){
		Goods goods = goodsDao.selGoodsById(1);
		System.out.println(goods.toString());
	}

	@Test
	public void testSelAllGoods(){
		List<Goods> goodes = goodsDao.selAllGoods();
		for (Goods goods:goodes) {

			System.out.println(goods.toString());
		}
	}

	@Test
	public void testSelTypeNameById(){
//		String type = gTypeDao.selTypeNameById(1);
//		System.out.println("type:"+type);

		Goods goods = goodsDao.selGoodsById(1);

		System.out.println(goods.toString());
	}


}
