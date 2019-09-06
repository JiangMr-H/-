/**
 * Copyright (C), 2015-2019, XXX有限公司
 * FileName: UserInfo
 * Author:   891649
 * Date:     2019/8/5 16:12
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */

package com.Pay.domian;


import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;

import java.util.List;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author 891649
 * @create 2019/8/5
 * @since 1.0.0
 */
public class UserInfo extends BaseRowModel {
    @ExcelProperty(value = "id", index = 0)
    private String id;
    @ExcelProperty(value = "username", index = 1)
    private String username;
    @ExcelProperty(value = "password", index = 2)
    private String password;
    @ExcelProperty(value = "status", index = 3)
    private int status;      //状态 0未开启 1开启

    public UserInfo(String id, String username, String password, int status) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.status = status;
    }
    public UserInfo() {
        super();
    }

    private String statusString;

    private List<Role> roles;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

    public String getStatusString() {
            if(status==0){
             statusString="未开启";
            }else if(status==1){
                statusString="已开启";
            }
        return statusString;
    }

    public void setStatusString(String statusString) {
        this.statusString = statusString;
    }


}