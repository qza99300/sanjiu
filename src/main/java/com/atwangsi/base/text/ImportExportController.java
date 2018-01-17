package com.atwangsi.base.text;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.atwangsi.base.model.ResultVO;
import com.atwangsi.base.utils.FileUpload;
import com.atwangsi.base.utils.HDYXUtils;
import com.atwangsi.user.model.TbIntegralProduct;
import com.atwangsi.user.service.ProductService;

@RequestMapping("import")
@Controller
public class ImportExportController {

//	@Autowired
//	private UserService userService;

	@Autowired
	private ProductService productService;

	// //测试下载标准模板
	// @RequestMapping(value="userDownLoad",method={RequestMethod.POST,RequestMethod.GET})
	// public void downloadTemplate(HttpServletResponse response) throws
	// Exception {
	// List<TbUser> list = new ArrayList<TbUser>();
	// TbUser i = new TbUser();
	// i.setUserName("用户名");; // 物品名称
	// i.setPhone("联系电话");; // 物品数量
	// i.setIdName("真实姓名"); //真实姓名
	// i.setArea1("所在区域");; // 所在区域
	// i.setIdCard("身份证号码");; // 身份证号码
	// list.add(i);
	// HDYXUtils.exportExcel(response, TbUser.class, list, new ExportParams(),
	// "用户信息导入标准模板");
	// }

	// 文件上传测试
	@RequestMapping(value = "export", method = RequestMethod.POST)
	@ResponseBody
	public ResultVO<Object> fileDownload(@RequestParam(value = "file", required = false) MultipartFile file,
			TbIntegralProduct product, HttpSession session, HttpServletRequest request) throws IOException {

		if (HDYXUtils.isNull(product)) {
			return ResultVO.fail("商品添加异常，请联系技术", null, null);
		}

//		String temp = Thread.currentThread().getContextClassLoader().getResource("").getPath();
		String tString = session.getServletContext().getRealPath("/WEB-INF/files");
		String temp = session.getServletContext().getResource("").getPath();
		String tempsPath = request.getContextPath();
//		int num = temp.indexOf(".metadata");
		
		String path = tempsPath.replace('/', '\\') + "\\src\\main\\webapp\\static\\uploadFile\\";
//		System.err.println("temps: "+temps);
		System.err.println("path: "+ path);
		List<String> list = FileUpload.upload(product.getProductName(), tString, file);
		product.setProductPicture(list.get(0).toLowerCase());
		if (productService.addProduct(product)) {
			return ResultVO.success("添加成功", null, null);
		}

		return ResultVO.fail("商品添加失败", null, null);
	}
	
	
	public int productMaxId(){
		int id = this.productService.querryMaxId();
		
		return id ;
	}

	// 文件导出测试
	// public ResultVO<Object> exportMsg(List<TbUser> users, String filePath){
	//
	//
	// Workbook workbook = new XSSFWorkbook();
	//
	// // 创建Sheet并设置标题
	// Sheet sheet = workbook.createSheet("基本信息");
	//
	// // 创建表头
	// Row headRow = sheet.createRow(0);
	// headRow.createCell(0).setCellValue("姓名");
	// headRow.createCell(1).setCellValue("性别");
	// headRow.createCell(2).setCellValue("国籍");
	// headRow.createCell(3).setCellValue("学号");
	// headRow.createCell(4).setCellValue("年龄");
	// headRow.createCell(5).setCellValue("专业");
	// headRow.createCell(6).setCellValue("入学日期");
	//
	// // 读取集合中的数据，此处注意要从1（数据行）开始，因为0为表头
	// for (int i = 1; i <= users.size(); i++)
	// {
	// // 获取一条数据
	// TbUser user = users.get(i - 1);
	//
	// // 创建新行
	// Row row = sheet.createRow(i);
	//
	// // 创建新行的每一列并将数据赋值到对应的列中
	// row.createCell(0).setCellValue(user.getUserName());
	// }
	//
	// FileOutputStream outputStream = null;
	// try
	// {
	// // 输出的文件路径及名称
	// outputStream = new FileOutputStream(filePath);
	// // 将数据写入工作簿中
	// workbook.write(outputStream);
	// }
	// catch (Exception e)
	// {
	// e.printStackTrace();
	// }
	// finally
	// {
	// try
	// {
	// // 关闭流
	// if (null != outputStream)
	// {
	// outputStream.close();
	// }
	// }
	// catch (Exception e)
	// {
	// e.printStackTrace();
	// }
	// }
	// }

}
