/**
 * Copyright (C), 2015-2019, XXX有限公司
 * FileName: UserInfoImpl
 * Author:   891649
 * Date:     2019/8/8 16:30
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */

package com.Pay.service.Impl;

import com.Pay.dao.IUserDao;
import com.Pay.domian.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author 891649
 * @create 2019/8/8
 * @since 1.0.0
 */
@Service
@Transactional
public class UserInfoImpl {

    @Autowired
    private IUserDao iUserDao;

    private UserInfo findpassword(String username) throws Exception {
        UserInfo userInfo = iUserDao.findpassword(username);
        return userInfo;
    }


}