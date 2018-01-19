package com.atwangsi.base.utils;

import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

/**
 * 文件上传
 * 
 * @author ou
 *
 */
public class FileDown {

	/**
	 * 导出模板
	 * @param fileName
	 * @param response
	 * @param list
	 * @return
	 */
	public static HSSFWorkbook fileDown(List<String> list){
		
		//一、创建xls表，定义基本属性
		HSSFWorkbook workbook = new HSSFWorkbook();
		//创建单元格，设置值表头，设置表头居中
		//setAlignment(HSSFCellStyle.ALIGN_CENTER); //居中
		HSSFCellStyle style = workbook.createCellStyle();
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		//创建第一个sheet
		HSSFSheet sheet = workbook.createSheet();
		//创建第一行
		HSSFRow row = sheet.createRow(0);
		HSSFCell cell = null;
		//第一行数据,表头
		for (int i = 0; i < list.size(); i++) {
			cell = row.createCell(i);
			cell.setCellStyle(style);
			cell.setCellValue(list.get(i));
		}
		return workbook;
		
	}
	
	

}
