package com.atwangsi.base.text;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atwangsi.base.model.ResultVO;
import com.atwangsi.base.utils.FileDown;
import com.atwangsi.base.utils.FileUpload;
import com.atwangsi.base.utils.HDYXUtils;
import com.atwangsi.user.model.TbIntegralProduct;
import com.atwangsi.user.service.ProductService;

@RequestMapping("import")
@Controller
public class ImportExportController {

	// @Autowired
	// private UserService userService;

	@Autowired
	private ProductService productService;

	// 通过poi导出模板 ok
	@RequestMapping(value = "down", method = RequestMethod.POST)
	@ResponseBody
	public ResultVO<Object> fileDown(HttpServletResponse response) throws IOException {
		// 定义的文件名
		String fileName = "用户信息导入模板";
		
		// 第三个参数：需要导出的字段
		// 获取用户信息模板
		HSSFWorkbook workbook = FileDown.fileDown(HDYXUtils.userDownFile());

		// 提交到response
		HDYXUtils.subResponse(fileName, workbook, response);

		return ResultVO.success("下载完成", null, null);
	}

	// 文件上传测试ok
	@RequestMapping(value = "export", method = RequestMethod.POST)
	@ResponseBody
	public ResultVO<Object> fileDownload(TbIntegralProduct product, HttpServletRequest request) throws IOException {

		if (HDYXUtils.isNull(product)) {
			return ResultVO.fail("商品添加异常，请联系技术", null, null);
		}
		// 文件上传
		List<String> list = FileUpload.upLoad(request);
		product.setProductPicture(list.get(0).toLowerCase());
		if (productService.addProduct(product)) {
			return ResultVO.success("添加成功", null, null);
		}

		return ResultVO.fail("商品添加失败", null, null);
	}

	public int productMaxId() {
		int id = this.productService.querryMaxId();

		return id;
	}
	
}
