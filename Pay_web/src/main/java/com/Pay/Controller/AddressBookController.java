/**
 * Copyright (C), 2015-2019, XXX有限公司
 * FileName: AddressBookController
 * Author:   891649
 * Date:     2019/8/5 10:37
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */

package com.Pay.Controller;

import com.Pay.domian.AddressBook;

import com.Pay.service.IAddressBookService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author 891649
 * @create 2019/8/5
 * @since 1.0.0
 */
@Controller
@RequestMapping("/AddressBook")
public class AddressBookController {

    @Autowired
    private IAddressBookService iAddressBookService;

    @RequestMapping("/findAll.do")
  public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")int page,@RequestParam(name = "size",required = true,defaultValue = "15")int size) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<AddressBook> findAll= iAddressBookService.findAll(page,size);
        PageInfo pageInfo = new PageInfo(findAll);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("AddressBook-list");
        return mv;
    }

    @RequestMapping("/findByCondition.do")
    public ModelAndView findByCondition(@RequestParam(name = "page",required = true,defaultValue = "1")int page,@RequestParam(name = "size",required = true,defaultValue = "15")int size,String userID, String username, String userPost, String userWork) throws Exception {
        ModelAndView mv =new ModelAndView();
        List<AddressBook> productList =iAddressBookService.findByConditionList(page,size,userID,username,userPost,userWork);
        PageInfo pageInfo = new PageInfo(productList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("Query-list");
        return mv;
    }

}