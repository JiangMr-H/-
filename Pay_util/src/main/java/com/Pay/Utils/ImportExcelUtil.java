/**
 * Copyright (C), 2015-2019, XXX有限公司
 * FileName: ImportExcelUtil
 * Author:   891649
 * Date:     2019/9/5 10:43
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */

package com.Pay.Utils;

import com.alibaba.excel.support.ExcelTypeEnum;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.IOException;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author 891649
 * @create 2019/9/5
 * @since 1.0.0
 */
    public class ImportExcelUtil {

        private final static String Excel_2003 = ".xls"; //2003 版本的excel
        private final static String Excel_2007 = ".xlsx"; //2007 版本的excel

        /**
         * @param in
         * @param fileName
         * @return
         * */
        public List<List<Object>> getBankListByExcel(InputStream in, String fileName) throws Exception{
            List<List<Object>> list = null;

            //创建Excel工作簿
            Workbook work = this.getWorkbook(in, fileName);
            if(work == null) {
                throw new Exception("创建Excel工作簿为空！");
            }
            Sheet sheet = null;
            Row row = null;
            Cell cell = null;
            list = new ArrayList<List<Object>>();
            //遍历Excel中的所有sheet
            for(int i = 0; i<work.getNumberOfSheets(); i++) {
                sheet = work.getSheetAt(i);
                if(sheet == null) {continue;}
                //遍历当前sheet中的所有行
                //int totalRow = sheet.getPhysicalNumberOfRows();//如果excel有格式，这种方式取值不准确
                int totalRow = sheet.getPhysicalNumberOfRows();
                for(int j = sheet.getFirstRowNum(); j<totalRow; j++) {
                    row = sheet.getRow(j);
                    if(!isRowEmpty(row)) {
                        //if(row != null && !"".equals(row)) {
                        //获取第一个单元格的数据是否存在
                        Cell fristCell=row.getCell(0);
                        if(fristCell!=null){
                            //遍历所有的列
                            List<Object> li = new ArrayList<Object>();
                            //int totalColum = row.getLastCellNum();
                            for(int y = row.getFirstCellNum(); y<row.getLastCellNum(); y++) {
                                cell = row.getCell(y);
                                String callCal = this.getCellValue(cell)+"";
                                li.add(callCal);
                            }
                            list.add(li);
                        }

                    }else if(isRowEmpty(row)){
                        continue;
                    }

                }
            }
            in.close();
            return list;
        }

    /**
     * 根据输入流，判断为xls还是xlsx，该方法原本存在于easyexcel 1.1.0 的ExcelTypeEnum中。
     */
    public static ExcelTypeEnum valueOf(InputStream inputStream) {
        try {
            FileMagic fileMagic = FileMagic.valueOf(inputStream);
            if (FileMagic.OLE2.equals(fileMagic)) {
                return ExcelTypeEnum.XLS;
            }
            if (FileMagic.OOXML.equals(fileMagic)) {
                return ExcelTypeEnum.XLSX;
            }
            throw new IllegalArgumentException("excelTypeEnum can not null");

        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }


        /**
         * 判断行是否为空
         * @param row
         * @return
         */
        public static boolean isRowEmpty(Row row) {
            for (int c = row.getFirstCellNum(); c < row.getLastCellNum(); c++) {
                Cell cell = row.getCell(c);
                if (cell != null && cell.getCellType() != Cell.CELL_TYPE_BLANK)
                    return false;
            }
            return true;
        }
        /**
         * 描述：根据文件后缀，自动适应上传文件的版本
         * @param inStr,fileName
         * @return
         * @throws Exception
         * */
        public Workbook getWorkbook(InputStream inStr,String fileName) throws Exception {
            Workbook work = null;
            String fileType = fileName.substring(fileName.lastIndexOf("."));
            if(Excel_2003.equals(fileType)){
                work=new HSSFWorkbook(inStr);//2003 版本的excel
            }else if(Excel_2007.equals(fileType)) {
                work=new XSSFWorkbook(inStr);//2007 版本的excel
            }else {
                throw new Exception("解析文件格式有误！");
            }
            return work;
        }

        /**
         * 描述：对表格中数值进行格式化
         * @param cell
         * @return
         * */
        public Object getCellValue(Cell cell) {
		/*Object value = null;
		DecimalFormat df1 = new DecimalFormat("0.00");//格式化number，string字符
		SimpleDateFormat sdf = new  SimpleDateFormat("yyy-MM-dd");//日期格式化
		DecimalFormat df2 = new DecimalFormat("0.00");//格式化数字
		if(cell !=null && !"".equals(cell)) {
			switch (cell.getCellType()) {
			case Cell.CELL_TYPE_STRING:
				value = cell.getRichStringCellValue().getString();
				break;
			case Cell.CELL_TYPE_NUMERIC:
				if("General".equals(cell.getCellStyle().getDataFormatString())) {
					value = df1.format(cell.getNumericCellValue());
				}else if("m/d/yy".equals(cell.getCellStyle().getDataFormatString())) {
					value = sdf.format(cell.getDateCellValue());
				}else if(HSSFDateUtil.isCellDateFormatted(cell)){
					Date date = cell.getDateCellValue();
					value = sdf.format(date);
				}
				else {
					value = df2.format(cell.getNumericCellValue());
				}
				break;
			case Cell.CELL_TYPE_BOOLEAN:
				value = cell.getBooleanCellValue();
				break;
			case Cell.CELL_TYPE_BLANK:
				value = "";
				break;
			default:
				break;
			}
		}
		return value;*/
            String result = new String();
            switch (cell.getCellType()) {
                case HSSFCell.CELL_TYPE_FORMULA:  //Excel公式
                    try {
                        result = String.valueOf(cell.getNumericCellValue());
                    } catch (IllegalStateException e) {
                        result = String.valueOf(cell.getRichStringCellValue());
                    }
                    break;
                case HSSFCell.CELL_TYPE_NUMERIC:// 数字类型
                    if (HSSFDateUtil.isCellDateFormatted(cell)) {// 处理日期格式、时间格式
                        SimpleDateFormat sdf;
                        if (cell.getCellStyle().getDataFormat() == HSSFDataFormat
                                .getBuiltinFormat("h:mm")) {
                            sdf = new SimpleDateFormat("HH:mm");
                        } else {// 日期
                            sdf = new SimpleDateFormat("yyyy-MM-dd");
                        }
                        Date date = cell.getDateCellValue();
                        result = sdf.format(date);
                    } else if (cell.getCellStyle().getDataFormat() == 58) {
                        // 处理自定义日期格式：m月d日(通过判断单元格的格式id解决，id的值是58)
                        SimpleDateFormat sdf = new SimpleDateFormat("M月d日");
                        double value = cell.getNumericCellValue();
                        Date date = org.apache.poi.ss.usermodel.DateUtil
                                .getJavaDate(value);
                        result = sdf.format(date);
                    } else {
                        double value = cell.getNumericCellValue();
                        CellStyle style = cell.getCellStyle();
                        DecimalFormat format = new DecimalFormat();
                        String temp = style.getDataFormatString();
                        // 单元格设置成常规
                        if (temp.equals("General")) {
                            format.applyPattern("#.##");
                        }
                        result = format.format(value);
                    }
                    break;
                case HSSFCell.CELL_TYPE_STRING:// String类型
                    result = cell.getRichStringCellValue().toString();
                    break;
                case HSSFCell.CELL_TYPE_BLANK:
                    result = "";
                default:
                    result = "";
                    break;
            }
            return result;
        }

        public String getFormat(String str) {
            if(str.equals("null")) {
                str="";
                return str;
            }else{
                return str;
            }
        }
        public Integer getFormats(Integer str) {
            if(str==null) {
                str=0;
                return str;
            }else{
                return str;
            }
        }

        /**
         * 获取字符串中的数字订单号、数字金额等，如从"USD 374.69"中获取到374.69、从“交易单号：66666666666”获取到66666666666
         * @param
         * @return
         */
        public static String getFormatNumber(String str){
            str = str.trim();
            Pattern p = Pattern.compile("[0-9]");
            int indexNum = 0;
            int lenght = str.length();
            String num = "";
            for(int i=0;i<lenght;i++){
                num += str.charAt(i);
                Matcher m = p.matcher(num);
                if(m.find()){
                    indexNum = i;
                    break;
                }
            }
            String formatNumber = str.substring(indexNum,lenght);
            return formatNumber;
        }
    }
