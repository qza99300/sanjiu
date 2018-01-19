package com.atwangsi.base.utils;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

/**
 * 文件上传
 * 
 * @author ou
 *
 */
public class FileUpload {

	/**
	 * 执行文件上传
	 * @param request
	 * @return
	 */
	public static List<String> upLoad(HttpServletRequest request) {
		// 拼接文件存储的目录
		String temp = Thread.currentThread().getContextClassLoader().getResource("").getPath();
//		System.err.println(temp);
		//上传到Tomcat的指定路径
		String path = temp.replace('/', '\\') + "uploadFile\\" ;
//		System.err.println(path);
		List<String> list = new ArrayList<String>(); // 存放结果
		// 1、将当前上下文初始化给CommonMutipartResolver
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
		// 2、检查Form中encType是否为multipart/form-data
		if (multipartResolver.isMultipart(request)) {
			// 将request转为MultipartHttpServletRequest
			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
			// 获取迭代器遍历multipartRequest里的文件名
			Iterator<String> iter = multipartRequest.getFileNames();
			while (iter.hasNext()) {
				// 获取文件并向下遍历
				MultipartFile file = multipartRequest.getFile(iter.next().toString());
				if (file != null) {
					// 获取文件类型，即后缀名
					String str = file.getOriginalFilename();
					String suffix = str.substring(str.lastIndexOf("."));

					// 用 当前日期+UUID作为文件名避免重名
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					String dateStr = sdf.format(new Date()).replaceAll("-", "");
					String name = dateStr + UUID.randomUUID().toString().replaceAll("-", "");

					// 拼接文件绝对路径
					String filePath = path + name + suffix;
					try {
						file.transferTo(new File(filePath));
					} catch (IllegalStateException | IOException e) {
						// TODO Auto-generated catch block
						return null;
					}
					list.add(filePath);
				}
			}
		}
		return list;

	}

	public static void deleteFile(String path) {
		File file = new File(path);
		// 如果文件路径所对应的文件存在，并且是一个文件，则直接删除
		if (file.exists() && file.isFile()) {
			if (file.delete()) {
				System.out.println("删除单个文件" + path + "成功！");

			} else {
				System.out.println("删除单个文件" + path + "失败！");

			}
		} else {
			System.out.println("删除单个文件失败：" + path + "不存在！");

		}
	}

}
