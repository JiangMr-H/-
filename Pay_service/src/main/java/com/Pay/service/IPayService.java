/**
 * Copyright (C), 2015-2019, XXX有限公司
 * FileName: IPayService
 * Author:   891649
 * Date:     2019/8/7 11:22
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */

package com.Pay.service;

import com.Pay.domian.Pay;

import java.util.List;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author 891649
 * @create 2019/8/7
 * @since 1.0.0
 */
public interface IPayService {

    List<Pay> findPayList(String username);
}