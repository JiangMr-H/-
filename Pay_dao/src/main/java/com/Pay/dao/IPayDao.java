package com.Pay.dao;

import com.Pay.domian.Pay;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface IPayDao {

    @Select("select * from \"N_PayList\" where \"UserId\"=#{username}")
   public List<Pay> findPayList(String username);

}
