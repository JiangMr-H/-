/**
 * Copyright (C), 2015-2019, XXX有限公司
 * FileName: AddressBookImpl
 * Author:   891649
 * Date:     2019/8/5 11:21
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */

package com.Pay.service.Impl;

import com.Pay.dao.IUserDao;
import com.Pay.domian.AddressBook;
import com.Pay.service.IAddressBookService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author 891649
 * @create 2019/8/5
 * @since 1.0.0
 */
@Service
@Transactional
public class AddressBookImpl implements IAddressBookService {

    @Autowired
    private IUserDao iUserDao;

    @Override
    public List<AddressBook> findAll(int page, int size) throws Exception {
        PageHelper.startPage(page,size);
        return iUserDao.findAll();
    }

    @Override
    public List<AddressBook> findByConditionList(int page, int size, String userID, String username, String userPost, String userWork) throws Exception {
        PageHelper.startPage(page,size);
        return iUserDao.findByConditionList(userID,username,userPost,userWork);
    }
}