/**
 * Copyright (C), 2015-2019, XXX有限公司
 * FileName: PayImpl
 * Author:   891649
 * Date:     2019/8/7 11:22
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */

package com.Pay.service.Impl;

import com.Pay.dao.IPayDao;
import com.Pay.domian.Pay;
import com.Pay.service.IPayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author 891649
 * @create 2019/8/7
 * @since 1.0.0
 */
@Service
@Transactional
public class PayImpl implements IPayService {

    @Autowired
    private IPayDao iPayDao;

    @Override
    public List<Pay> findPayList(String username) {
        List<Pay> payList = iPayDao.findPayList(username);
        return payList;
    }
}