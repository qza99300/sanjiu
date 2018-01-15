package com.atwangsi.base.utils;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;

public class HDYXUtils {
	
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

	 
}
