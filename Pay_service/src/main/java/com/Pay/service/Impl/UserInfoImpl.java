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
import com.Pay.domian.Catagory;
import com.Pay.domian.UserInfo;
import com.Pay.service.IUserInfoService;
import com.Pay.service.IUserService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

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
public class UserInfoImpl implements IUserInfoService {

    @Autowired
    private IUserDao iUserDao;

    public UserInfo findpassword(String username) throws Exception {
        UserInfo userInfo = iUserDao.findpassword(username);
        return userInfo;
    }

    @Override
    public void save(UserInfo userInfo) throws Exception {
       iUserDao.save(userInfo);
    }

    @Override
    public void saveExcel(Catagory catagory) throws Exception {
        iUserDao.saveExcel(catagory);
    }

    @Override
    public List<UserInfo> findUserAll(int page,int size) throws Exception {
        PageHelper.startPage(page,size);
        return iUserDao.findUserAll();
    }

    @Override
    public void roleSave(String username) {
        iUserDao.roleSave(username);
    }

    @Override
    public String findById() {
        return iUserDao.findById();
    }


}