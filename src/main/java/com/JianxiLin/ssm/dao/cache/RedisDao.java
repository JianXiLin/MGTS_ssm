package com.JianxiLin.ssm.dao.cache;

import com.JianxiLin.ssm.dto.GoodsWithUserDTO;
import com.dyuproject.protostuff.LinkedBuffer;
import com.dyuproject.protostuff.ProtostuffIOUtil;
import com.dyuproject.protostuff.runtime.RuntimeSchema;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

public class RedisDao {

	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	private final JedisPool jedisPool;

	private RuntimeSchema<GoodsWithUserDTO> schema = RuntimeSchema.createFrom(GoodsWithUserDTO.class);

	public RedisDao(String ip, int port) {
		jedisPool = new JedisPool(ip, port);
	}

	public GoodsWithUserDTO getGoods(long goodsId) {
		// redis操作逻辑
		try {
			Jedis jedis = jedisPool.getResource();
			try {
				String key = "goodsId:" + goodsId;
				// 并没有实现内部序列化操作
				// get -> byte[] -> 反序列化 -> object[goodsId]
				// 采用自定义序列化
				// protostuff : pojo.
				byte[] bytes = jedis.get(key.getBytes());
				if (bytes != null) {
					GoodsWithUserDTO goods = schema.newMessage();
					ProtostuffIOUtil.mergeFrom(bytes, goods, schema);
					// seckill被反序列化
					return goods;
				}
			} finally {
				jedis.close();
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return null;
	}

	public String putGoods(GoodsWithUserDTO goods) {
		// set Object(goods) -> 序列号 -> byte[]
		try {
			Jedis jedis = jedisPool.getResource();
			try {
				String key = "goodsId:" + goods.getGoods().getId();
				byte[] bytes = ProtostuffIOUtil.toByteArray(goods, schema,
						LinkedBuffer.allocate(LinkedBuffer.DEFAULT_BUFFER_SIZE));
				// 超时缓存
				int timeout = 60 * 60;
				String result = jedis.setex(key.getBytes(), timeout, bytes);
				return result;
			} finally {
				jedis.close();
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return null;
	}

}
