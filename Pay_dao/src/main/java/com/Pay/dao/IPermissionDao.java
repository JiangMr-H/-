/**
 * Copyright (C), 2015-2019, XXX有限公司
 * FileName: IPermissionDao
 * Author:   891649
 * Date:     2019/8/7 16:04
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */

package com.Pay.dao;

import com.Pay.domian.Permission;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author 891649
 * @create 2019/8/7
 * @since 1.0.0
 */
public interface IPermissionDao {

    @Select("select * from \"permission\" where \"id\" in (select \"permissionId\" from \"role_permission\" where \"roleId\"=#{id})")
    public List<Permission> findPermissionByRoleId(String id)throws Exception;

}