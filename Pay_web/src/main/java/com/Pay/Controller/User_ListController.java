/**
 * Copyright (C), 2015-2019, XXX有限公司
 * FileName: User_ListController
 * Author:   891649
 * Date:     2019/8/5 9:29
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */

package com.Pay.Controller;

import com.Pay.domian.UserInfo;
import com.Pay.service.IUserInfoService;
import com.Pay.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 〈一句话功能简述〉<br>
 * 〈〉
 *
 * @author 891649
 * @create 2019/8/5
 * @since 1.0.0
 */
@Controller
@RequestMapping("/user")
public class User_ListController {

   /* @Autowired
    private IUserInfoService iUserInfoService;

    @RequestMapping("/findpassword.do")
    public ModelAndView findpassword(String username) {

        ModelAndView mv = new ModelAndView();
        UserInfo userInfo = iUserInfoService.findpassword(username);
        mv.addObject("", userInfo);
        mv.setViewName("forgetPassword");
        return mv;
    }*/

}