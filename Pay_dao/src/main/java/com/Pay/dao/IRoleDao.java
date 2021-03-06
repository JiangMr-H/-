package com.Pay.dao;

import com.Pay.domian.Role;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface IRoleDao {

    @Select("select * from \"role\" where \"id\" in (select \"roleId\" from \"users_role\" where \"usersId\"=#{userId})")
    @Results({
          @Result(id=true,property = "id",column = "id"),
          @Result(property = "roleName",column = "roleName"),
          @Result(property = "roleDesc",column = "roleDesc"),
          @Result(property = "permissions",column = "id",javaType = java.util.List.class,many = @Many(select = "com.Pay.dao.IPermissionDao.findPermissionByRoleId")),
    })
    public List<Role> findByUserId(String userId)throws Exception;


}
