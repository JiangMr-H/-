/**
 * Copyright (C), 2015-2019, XXX有限公司
 * FileName: PayController
 * Author:   891649
 * Date:     2019/8/4 10:32
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */

package com.Pay.Controller;

import com.Pay.domian.Pay;
import com.Pay.service.IPayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * 〈〉
 *
 * @author 891649
 * @create 2019/8/4
 * @since 1.0.0
 */
@Controller
@RequestMapping("/pay")
public class Pay_ListController {

    @Autowired
    private IPayService iPayService;

    @RequestMapping("/findPayList.do")
    public ModelAndView findPayList(String username) {
        //下面这个方法可以获取所有登录信息
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        ModelAndView mv = new ModelAndView();
        List<Pay> payList = iPayService.findPayList(auth.getName());
        mv.addObject("payList", payList);
        mv.setViewName("Pay-list");
        return mv;
    }


}