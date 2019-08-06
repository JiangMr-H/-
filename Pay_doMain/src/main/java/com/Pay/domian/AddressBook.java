/**
 * Copyright (C), 2015-2019, XXX有限公司
 * FileName: AddressBook
 * Author:   891649
 * Date:     2019/8/5 10:41
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */

package com.Pay.domian;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author 891649
 * @create 2019/8/5
 * @since 1.0.0
 */
public class AddressBook {
    private String userId;
    private String Username;
    private String Monad;//单位
    private String sex;
    private String Post; //岗位
    private String phone;
    private String wageSystem;//工资体系

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String username) {
        Username = username;
    }

    public String getMonad() {
        return Monad;
    }

    public void setMonad(String monad) {
        Monad = monad;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPost() {
        return Post;
    }

    public void setPost(String post) {
        Post = post;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getWageSystem() {
        return wageSystem;
    }

    public void setWageSystem(String wageSystem) {
        this.wageSystem = wageSystem;
    }
}