package com.Pay.service;

import com.Pay.domian.Catagory;
import com.Pay.domian.UserInfo;

import java.util.List;


public interface IUserInfoService {

    UserInfo findpassword(String username)throws Exception;

    void save(UserInfo userInfo)throws Exception;

    void saveExcel(Catagory catagory)throws Exception;

    List<UserInfo> findUserAll(int page,int size)throws Exception;

    void roleSave(String username);

    String findById();
}
