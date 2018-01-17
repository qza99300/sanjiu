package com.atwangsi.base.utils;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

/**
 * 文件上传
 * 
 * @author ou
 *
 */
public class FileUpload {

	@SuppressWarnings("resource")
	public static List<String> upload(String names, String path, MultipartFile file) throws IOException {
		// 存放结果
		List<String> list = new ArrayList<String>(); 
		if (file != null) {
			// 获取文件类型，即后缀名
			String str = file.getOriginalFilename();
			String suffix = str.substring(str.lastIndexOf("."));
			// 用 当前日期+UUID作为文件名避免重名
			// SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			// String dateStr = sdf.format(new Date()).replaceAll("-", "");
			String name =  (new Date()).getTime() + suffix;
			System.err.println(name);
			// 拼接文件绝对路径
			String filePath = path + name;
//			System.err.println("文件上传路径："+ filePath);
			
			
			try {
				//io把文件写入指定的位置
//				InputStream in = file.getInputStream();
//				byte[] bt = new byte[1024];
//				int i = 0;
//				FileOutputStream stream = new FileOutputStream(path);
//				while ((i = in.read(bt)) != -1) {
//					stream.write(bt, 0, i);
//				}
				
				//文件移动到上传的位置
				file.transferTo(new File(path));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			list.add(path + name);
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
