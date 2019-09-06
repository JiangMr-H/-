/**
 * Copyright (C), 2015-2019, XXX有限公司
 * FileName: ExcelBean
 * Author:   891649
 * Date:     2019/8/22 16:56
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */

package com.Pay.domian;

import org.apache.poi.xssf.usermodel.XSSFCellStyle;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author 891649
 * @create 2019/8/22
 * @since 1.0.0
 */
public class ExcelBean implements java.io.Serializable{

    private String headTextName;//列头（标题）名
    private String propertyName;//对应字段名
    private Integer cols;//合并单元格数
    private XSSFCellStyle cellStyle;

    public ExcelBean(){

    }
    public ExcelBean(String headTextName, String propertyName){
        this.headTextName = headTextName;
        this.propertyName = propertyName;
    }

    public ExcelBean(String headTextName, String propertyName, Integer cols) {
        super();
        this.headTextName = headTextName;
        this.propertyName = propertyName;
        this.cols = cols;
    }

    public String getHeadTextName() {
        return headTextName;
    }

    public void setHeadTextName(String headTextName) {
        this.headTextName = headTextName;
    }

    public String getPropertyName() {
        return propertyName;
    }

    public void setPropertyName(String propertyName) {
        this.propertyName = propertyName;
    }

    public Integer getCols() {
        return cols;
    }

    public void setCols(Integer cols) {
        this.cols = cols;
    }

    public org.apache.poi.ss.usermodel.CellStyle getCellStyle() {
        return cellStyle;
    }

    public void setCellStyle(XSSFCellStyle cellStyle) {
        this.cellStyle = cellStyle;
    }
}