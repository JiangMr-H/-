/**
 * Copyright (C), 2015-2019, XXX有限公司
 * FileName: AddressBookService
 * Author:   891649
 * Date:     2019/8/5 11:20
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */

package com.Pay.service;

import com.Pay.domian.AddressBook;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author 891649
 * @create 2019/8/5
 * @since 1.0.0
 */

public interface IAddressBookService {

    List<AddressBook> findAll(int page, int size)throws Exception;

    List<AddressBook> findByConditionList(int page, int size, String userID, String username, String userPost, String userWork) throws Exception;
}