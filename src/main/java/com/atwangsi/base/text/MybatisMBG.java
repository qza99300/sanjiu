package com.atwangsi.base.text;

import java.io.File;
import java.util.ArrayList;

import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;

public class MybatisMBG {
	
	public static void main(String[] args) throws Exception {
		
		ArrayList<String> list = new ArrayList<String>();
		
		Boolean overwrite = true;
		File file = new File("mbg.xml");
		
		ConfigurationParser parser = new ConfigurationParser(list);
		Configuration conf = parser.parseConfiguration(file);
		
		DefaultShellCallback callback = new DefaultShellCallback(overwrite);
		
		MyBatisGenerator mbg = new MyBatisGenerator(conf, callback, list);
		
		//执行生成
		mbg.generate(null);
		System.out.println("生成成功...路过...");
		
	}

}
