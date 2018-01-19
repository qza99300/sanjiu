package com.atwangsi.base.utils;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;

import com.atwangsi.user.model.TbActivityApply;
import com.atwangsi.user.model.TbUser;
import com.fasterxml.jackson.databind.ObjectMapper;

public class HDYXUtils {
	
	/**
	 * 设置导入信息的文件标准模板
	 * @param response
	 * @param clazz
	 * @param list
	 * @param params
	 * @param fileName
	 */
	
	//用户导入导出基本信息  
	protected static void setResponseHeader(HttpServletResponse response, String fileName){
        fileName += ".xls";
        String cntentType = "application/vnd.ms-excel";
        try {
            fileName = new String(fileName.getBytes("UTF-8"), "ISO_8859_1");//解决文件中文名乱码
        }catch (Throwable e){
            e.printStackTrace();
        }
        response.setHeader("Content-Type", cntentType);// 告诉浏览器用什么软件可以打开此文件
        response.setHeader("Content-Disposition", "attachment;filename="+fileName);// 下载文件的默认名称
    }
	
	
	/**
	 * 返回工程绝对路径
	 * @param request
	 * @return
	 */
	public static String contextPath(HttpServletRequest request){
		return request.getSession().getServletContext().getContextPath();
	}
	
	/**
	 * 当前目录下空存储路径
	 * @param request
	 * @return
	 */
	public static String realPath(HttpServletRequest request){
		return request.getSession().getServletContext().getRealPath("");
	}
	
	/**
	 * 时间转化为string，并设置格式
	 * @param date
	 * @return
	 */
	public static String timeFormat(Date date){
		if (HDYXUtils.isNull(date)) {
			return "";
		}
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.format(date);
	}

	/**
	 * 判断是否为NULL
	 * @param obj
	 * @return
	 */
	public static boolean isNull(Object obj) {
        if (obj == null) return true;
        if ((obj instanceof Number)) return isNaN((Number) obj);
        return "".equals(obj) || ("null".equals(obj)) || (obj == null);
    }
	
	/**
	 * 判断判断是否为NaN
	 * @param n
	 * @return
	 */
	public static boolean isNaN(Number n) {
        if (n == null) return true;
        Class<? extends Number> type = n.getClass();
        if ((Integer.class == type) || (Integer.TYPE == type)) return n.equals(Integer.valueOf(-2147483648));
        if ((Long.class == type) || (Long.TYPE == type)) return n.equals(Long.valueOf(-9223372036854775808L));
        if ((Float.class == type) || (Float.TYPE == type)) return n.equals(Float.valueOf(1.4E-45F));
        if ((Short.class == type) || (Short.TYPE == type)) return n.equals(Short.valueOf((short) -32768));
        if ((Byte.class == type) || (Byte.TYPE == type)) return n.equals(Byte.valueOf((byte) -128));
        if (BigDecimal.class == type) return n.equals(BigDecimal.valueOf(4.9E-324D));
        if (BigInteger.class == type) return n.equals(BigInteger.valueOf(-9223372036854775808L));
        return Double.isNaN(n.doubleValue());
    }
	
	/**
	 * 获取文件的存放目录
	 * @param text
	 * @param regex
	 * @param replacement
	 * @return
	 */
	public static String replaceLast(String text, String regex, String replacement) {
	  	  return text.replaceFirst("(?s)"+regex+"(?!.*?"+regex+")", replacement);
	  	}
	
	/**
	 * 文件上传
	 * @param file
	 * @param targetPath
	 * @param fileName
	 * @throws IOException
	 */
	public static void saveFile(MultipartFile file, String targetPath, String fileName) throws IOException {
        File targetFile = new File(targetPath,fileName);
        File dir = targetFile.getParentFile();
        if(!dir.exists()) {
            dir.mkdirs();
        }
        file.transferTo(targetFile);
	 }
	
	/**
	 * json格式数据转换为实体对象
	 * @param jsonStr
	 * @param clazz
	 * @return
	 */
	 public static <T> T convertToObject(String jsonStr,Class<T> clazz) {
	        ObjectMapper objectMapper = getDefaultObjectMapper();
	        return toObject(objectMapper,jsonStr,clazz);
	    }

	 /**
	  * 
	  * @param objectMapper
	  * @param jsonStr
	  * @param clazz
	  * @return
	  */
	@SuppressWarnings("unchecked")
	private static <T> T toObject(ObjectMapper objectMapper,String jsonStr,Class<T> clazz){
            try {
				if(!HDYXUtils.isNull(jsonStr)) {
				    T t = objectMapper.readValue(jsonStr, clazz);
				    if (HDYXUtils.isNull(t)){
				        t = (T)Class.forName(clazz.getName()).newInstance();
				    }
				    return t;
				}else {
					throw  new JsonNullException("Json数据为空！");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
	      
	    }
	 
	 /**
	  * 自定义异常
	  * @author ou
	  *
	  */
	 @SuppressWarnings("serial")
		static class  JsonNullException extends Exception{
	        public JsonNullException(String msg){
	            super(msg);
	        }
	    }

	/**
	  * 创建一个obj对象返回
	  * @return
	  */
	private static ObjectMapper getDefaultObjectMapper() {
		// TODO Auto-generated method stub
		return new ObjectMapper();
	}
//————————————————————————————用户信息导出模板和导出格式设置开始————————————————————————————————————————————————
	/**
	 * 导出用户信息模板
	 * @return
	 */
	public static List<String> userDownFile() {
		// TODO Auto-generated method stub
		List<String> list = new ArrayList<>();
		list.add("序号");
		list.add("用户名");
		list.add("联系电话");
		list.add("真实姓名");
		list.add("企业微信账号");
		list.add("所在公司");
		list.add("所在部门");
		list.add("现任职务");
		list.add("所属区域");
		list.add("所在省");
		list.add("所在市");
		list.add("所在区");
		list.add("邮箱地址");
		list.add("详细地址");
		list.add("创建时间");
		return list;
	}
	/**
	 * 设置导出数据
	 * @param i
	 * @param user
	 * @return
	 */
	public static List<String> userDownFileByUser(Integer i ,TbUser user) {
		// TODO Auto-generated method stub
		List<String> list = new ArrayList<>();
		list.add(i +"");
		list.add(user.getUserName());//"用户名"
		list.add(user.getPhone());//"联系电话"
		list.add(user.getIdName());//"真实姓名"
		list.add(user.getWechatName());//"企业微信账号"
		list.add(user.getCompany());//"所在公司
		list.add(user.getDepartment());//"所在部门"
		list.add(user.getDuty());//"现任职务"
		list.add(user.getArea1());//"所属区域"
		list.add(user.getProvince());//省
		list.add(user.getCity());//市
		list.add(user.getArea2());//区
		list.add(user.getEmail());//"邮箱地址"
		list.add(user.getAddress());//"详细地址"
		list.add(timeFormat(user.getCreateDate()));//"创建时间"
		return list;
	}
//————————————————————————————用户信息导出模板和导出格式设置结束————————————————————————————————————————————————
	/**
	 * 遍历 显示每一行需要显示的数据
	 */
	public static void subResponse(String fileName ,HSSFWorkbook workbook, HttpServletResponse response) {
		//缓冲到request中传入浏览器端弹出下载页面。
		try {
			//设置response参数，可以打开下载页面 
			response.reset();
			response.setContentType("application/vnd.ms-excel;charset=utf-8");
			response.setHeader("Content-Disposition", "attachment;filename=" + new String((fileName + ".xls").getBytes("UTF-8"), "iso-8859-1"));
			//获取response域对象中的输出流
			ServletOutputStream outputStream = response.getOutputStream();
			workbook.write(outputStream);
		} catch (Exception e) {
			e.getMessage();
		}
	}


	/**
	 * 文件写入查询到的用户信息数据
	 * @param workbook
	 * @param users
	 * @return
	 */
	public static HSSFWorkbook intoUserMsgtoFile(HSSFWorkbook workbook, List<TbUser> users) {
		//获取第一个sheet
		HSSFSheet sheet = workbook.getSheetAt(0);
		//设置居中
		HSSFCellStyle style = workbook.createCellStyle();
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		
		HSSFRow row =  null;
		//每一个对象代表一行数据
		for (int i = 1; i <= users.size(); i++) {
			row = sheet.createRow(i);//创建新行
			//获取模板输入的数据格式
			TbUser user = users.get(i-1);//获取一条数据
			List<String> list = userDownFileByUser(i-1, user);
			for (int j = 0; j < list.size(); j++) {
				row.createCell(j).setCellValue(list.get(j));//写入数据
			}
		}
		return workbook;
	}

	/**
	 * 报名信息第一行数据
	 * @return
	 */
	public static List<String> activityDownFile() {
		// TODO Auto-generated method stub
		ArrayList<String> list = new ArrayList<>();
		list.add("序号");
		list.add("活动标题");
		list.add("报名名称");
		list.add("联系电话");
		list.add("有效时间");
		list.add("所在部门");
		list.add("所属区域");
		list.add("所在省");
		list.add("所在市");
		list.add("所在区");
		list.add("报名时间");
		return list;
	}
	
	/**
	 * 报名信息写入文件排版
	 * @param i
	 * @param apply
	 * @return
	 */
	private static List<String> activityApplyDownFileByApply(int i, TbActivityApply apply) {
		// TODO Auto-generated method stub
		List<String> list = new ArrayList<>();
		list.add(i+"");
		list.add(apply.getActivityTitle());
		list.add(apply.getApplyName());
		list.add(apply.getApplyPhone());
		list.add(timeFormat(apply.getValidDate()));
		list.add(apply.getDepartment());
		list.add(apply.getArea());
		list.add(apply.getProvince());
		list.add(apply.getCity());
		list.add(apply.getArea1());
		list.add(timeFormat(apply.getCreateDate()));
		return list;
	}

	/**
	 * 报名信息写入文件操作
	 * @param workbook
	 * @param list
	 */
	public static void intoActivityMsgtoFile(HSSFWorkbook workbook, List<TbActivityApply> list) {
		// TODO Auto-generated method stub
		//获取第一个sheet
		HSSFSheet sheet = workbook.getSheetAt(0);
		//设置居中
		HSSFCellStyle style = workbook.createCellStyle();
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		
		HSSFRow row =  null;
		//每一个对象代表一行数据
		for (int i = 1; i <= list.size(); i++) {
			row = sheet.createRow(i);//创建新行
			//获取模板输入的数据格式
			TbActivityApply apply = list.get(i-1);//获取一条数据
			List<String> applyList = activityApplyDownFileByApply(i, apply);
			for (int j = 0; j < applyList.size(); j++) {
				row.createCell(j).setCellValue(applyList.get(j));;//写入数据
			}
		}
	}


	

	 
}
