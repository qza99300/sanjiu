package com.atwangsi.user.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;
import com.atwangsi.base.model.AppContant;
import com.atwangsi.base.model.ResultVO;
import com.atwangsi.user.model.TbIntegralProduct;
import com.atwangsi.user.service.ProductService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@RequestMapping("product")
@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService ;

	/**
	 * 模糊查询-商品名称
	 * @param pageNum
	 * @param pageSize
	 * @param productName
	 * @return
	 */
	@RequestMapping("querryByLike")
	@ResponseBody
	public PageInfo<TbIntegralProduct> querryByLike(
			@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam("productName") String productName) {
		
		PageHelper.startPage(pageNum, pageSize);
		
		List<TbIntegralProduct> list =this.productService.querryByLike(productName);
		
				return new PageInfo<>(list, AppContant.PAGE_SIZE);
	}
	
	/**
	 * 添加 测试文件上传
	 * @param product
	 * @return
	 * @throws Exception 
	 * @throws IllegalStateException 
	 */
	@RequestMapping(value ="add" ,method = RequestMethod.POST)
	@ResponseBody
	public ResultVO<Object> addProduct(TbIntegralProduct product,@RequestParam(value="file",required=false) MultipartFile file) throws IllegalStateException, Exception {
		//设置创建时间
		product.setCreateDate(new Date());
		
		Boolean bool = this.productService.addProduct(product);
		if (bool) {
			return ResultVO.success("添加成功", null, null);
		}

		return ResultVO.fail("添加失败，请重新添加！", null, null);

	}
	
	/**
	 * 删除
	 * @param orderIds
	 * @return
	 */
	@RequestMapping("delete")
	@ResponseBody
	public ResultVO<Object> deleteProductById(@RequestParam("productId") Integer productId) {

		// 预判断
		if (productId == null) {
			return ResultVO.fail("订单id异常", null, null);
		}

		Boolean bool = this.productService.deleteProductById(productId);

		if (bool) {
			return ResultVO.success("删除成功", null, null);
		}

		return ResultVO.fail("删除失败，请重新删除！", null, null);

	}
	
	/**
	 * 修改
	 * @param product
	 * @return
	 */
	@RequestMapping("update")
	@ResponseBody
	public ResultVO<Object> updateOrder(TbIntegralProduct product) {

		// 预判断
		if (product.getProductId() == null) {
			return ResultVO.fail("订单修改异常", null, null);
		}

		Boolean bool = this.productService.updateOrder(product);

		if (bool) {
			return ResultVO.success("修改成功", null, null);
		}

		return ResultVO.fail("修改失败，请重新修改！", null, null);

	}
	
	/**
	 * 查询所有
	 * @param pageNum
	 * @param pageSize
	 * @param productId  有值查一个
	 * @return
	 */
	@RequestMapping("querry")
	@ResponseBody
	public PageInfo<TbIntegralProduct> queryAll(@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam(value = "productId", required=false) Integer productId ) {
		
		PageHelper.startPage(pageNum, pageSize);
		
		if (productId == null) {
			return new PageInfo<>(this.productService.queryAll(), AppContant.PAGE_SIZE);
		}
		
		return new PageInfo<>(this.productService.querryByProductId(productId),AppContant.PAGE_SIZE);

	}
	
	/**
	 * 修改显示内容
	 * @param activityId
	 * @return
	 */
	@RequestMapping(value="displayActivity", produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public String displayActivity(String productId) {
		TbIntegralProduct tp=productService.selectByPrimaryKey(Integer.parseInt(productId));
		JSONObject jo = new JSONObject();
		jo.put("productName", tp.getProductName());
		jo.put("productId", tp.getProductId());
		jo.put("productIntegral", tp.getProductIntegral());
		jo.put("productCount", tp.getProductCount());
		jo.put("productPresentation", tp.getProductPresentation());
		return jo.toJSONString();
	}
	
}
