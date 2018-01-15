package com.atwangsi.user.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.atwangsi.user.model.TbActivityManage;
import com.atwangsi.user.model.TbIntegralProduct;

public interface ProductService {

	Boolean addProduct(TbIntegralProduct product);

	Boolean deleteProductById(Integer productId);

	Boolean updateOrder(TbIntegralProduct product);

	List<TbIntegralProduct> queryAll();

	List<TbIntegralProduct> querryByProductId(Integer productId);

	TbIntegralProduct selectByPrimaryKey(int parseInt);

	List<TbIntegralProduct> querryByLike(String productName);


}
