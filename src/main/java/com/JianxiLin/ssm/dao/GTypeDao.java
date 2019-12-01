package com.JianxiLin.ssm.dao;

import org.apache.ibatis.annotations.Param;

public interface GTypeDao {

    String selTypeNameById(@Param("id") Integer id);

    Integer selTypeIdByName(@Param("typeName") String typeName);
}
