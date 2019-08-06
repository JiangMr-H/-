/**
 * Copyright (C), 2015-2019, XXX有限公司
 * FileName: UserDao
 * Author:   891649
 * Date:     2019/8/5 9:31
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */

package com.Pay.dao;

import com.Pay.domian.AddressBook;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author 891649
 * @create 2019/8/5
 * @since 1.0.0
 */
public interface IUserDao {
    //查询所有员工信息

    @Select("select \"userId\",\"Username\",\"Monad\",\"sex\",\"Post\",\"phone\",\"wageSystem\" from \"AddressBook\"")
    List<AddressBook> findAll()throws Exception;


    @Select({"<script>",
            "select \"userId\",\"Username\",\"Monad\",\"sex\",\"Post\",\"phone\",\"wageSystem\" from \"AddressBook\"",
            "where 1=1" ,
            "<when test='userID!=null and userID!=\"\"'>",
            "and \"userId\"=#{userID}",
            "</when>",
            "<when test='username!=null and username!=\"\"'>",
            "and \"Username\"=#{username}",
            "</when>",
            "<when test='userPost!=null and userPost!=\"\"'>",
            "and \"Post\"=#{userPost}",
            "</when>",
            "<when test='userWork!=null and userWork!=\"\"'>",
            "and \"Monad\"=#{userWork}",
            "</when>",
            "</script>"})
    List<AddressBook> findByConditionList(@Param("userID") String userID, @Param("username") String username, @Param("userPost") String userPost, @Param("userWork") String userWork);
}