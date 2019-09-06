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

import com.Pay.Utils.ExcelListener;
import com.Pay.Utils.ImportExcelUtil;
import com.Pay.domian.Catagory;
import com.Pay.domian.UserInfo;
import com.Pay.service.IUserInfoService;
import com.alibaba.excel.ExcelReader;
import com.alibaba.excel.metadata.Sheet;
import com.alibaba.excel.support.ExcelTypeEnum;
import com.github.pagehelper.PageInfo;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
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
@RequestMapping("/user")
public class User_ListController {

   @Autowired
    private IUserInfoService userInfoService;

    /**
     * 查询所有用户
     * @param
     * @return
     * @throws Exception
     */
    @RequestMapping("/findUserAll.do")
    public ModelAndView findUserAll(@RequestParam(name = "page",required = true,defaultValue = "1")int page, @RequestParam(name = "size",required = true,defaultValue = "10")int size)throws Exception{
        List<UserInfo> userInfoList = userInfoService.findUserAll(page,size);
        ModelAndView mv=new ModelAndView();
        PageInfo pageInfo = new PageInfo(userInfoList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("UserManager");
        return mv;
    }

     @RequestMapping("/save.do")
    public String  save(UserInfo userInfo) throws Exception
     {
         userInfoService.save(userInfo);
         return "redirect:findUserAll.do";
     }

    @RequestMapping("/insertUser.do")
    public String imporExcel(@RequestParam("file") MultipartFile file) throws Exception
    {
        InputStream inputStream = file.getInputStream();
        if (null == inputStream) {
            throw new NullPointerException("the inputStream is null!");
        }

        //实例化实现了AnalysisEventListener接口的类
        ExcelListener listener = new ExcelListener();
        //传入参数
        ExcelReader excelReader = new ExcelReader(inputStream, ImportExcelUtil.valueOf(inputStream), null, listener);
        //读取信息
        excelReader.read(new Sheet(1, 1, UserInfo.class));

        //获取数据
        List<Object> list = listener.getDatas();
        UserInfo userInfo = new UserInfo();

        //转换数据类型,并插入到数据库
        for (int i = 0; i < list.size(); i++) {
            userInfo = (UserInfo) list.get(i);

            userInfoService.save(userInfo);
        }
        return "redirect:findUserAll.do";
    }



    //使用easyexcel,需要自定义实现AnalysisEventListener接口.
    //easyexcel会帮助我们读取数据.我们再将读取的数据封装到List中,
    //再在控制器中,获取easyexcel帮我们读取到的数据,在对数据进行类型转换和封装,最后插入到数据库即可.
    //这个框架,真的是桑心病况,太特么的简单了.
  /*  @RequestMapping("/import.do")
    public String importExcel(@RequestParam("file") MultipartFile file) throws Exception
    {
        System.out.println("导入成功");

        InputStream inputStream = file.getInputStream();
       System.out.println(inputStream+"=========================================");
        if (null == inputStream) {
            throw new NullPointerException("the inputStream is null!");
        }

        //实例化实现了AnalysisEventListener接口的类
        ExcelListener listener = new ExcelListener();
        //传入参数
        ExcelReader excelReader = new ExcelReader(inputStream, valueOf(inputStream), null, listener);
        //读取信息
        excelReader.read(new Sheet(1, 1, Catagory.class));

        //获取数据
        List<Object> list = listener.getDatas();

        List<Catagory> catagoryList = new ArrayList<Catagory>();
        Catagory catagory = new Catagory();

        //转换数据类型,并插入到数据库
        for (int i = 0; i < list.size(); i++) {
            catagory = (Catagory) list.get(i);

            userInfoService.saveExcel(catagory);

            //IUserInfoService.insertCategory(catagory);
        }
        return "../index";
    }*/







}