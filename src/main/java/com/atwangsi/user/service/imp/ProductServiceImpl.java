package com.atwangsi.user.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.user.dao.TbIntegralProductMapper;
import com.atwangsi.user.model.TbActivityManage;
import com.atwangsi.user.model.TbIntegralProduct;
import com.atwangsi.user.model.TbIntegralProductExample;
import com.atwangsi.user.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private TbIntegralProductMapper productMapper;
	
	@Override
	public Boolean addProduct(TbIntegralProduct product) {
		// TODO Auto-generated method stub
		return this.productMapper.insertSelective(product) > 0;
	}

	@Override
	public Boolean deleteProductById(Integer productId) {
		// TODO Auto-generated method stub
		return this.productMapper.deleteByPrimaryKey(productId) > 0;
	}

	@Override
	public Boolean updateOrder(TbIntegralProduct product) {
		// TODO Auto-generated method stub
		return this.productMapper.updateByPrimaryKeySelective(product) > 0;
	}

	@Override
	public List<TbIntegralProduct> queryAll() {
		// TODO Auto-generated method stub
		return this.productMapper.selectByExample(null);
	}

	@Override
	public List<TbIntegralProduct> querryByProductId(Integer productId) {
		// TODO Auto-generated method stub
		List<TbIntegralProduct> list = new ArrayList<>();
		list.add(this.productMapper.selectByPrimaryKey(productId));
		return list;
	}

	@Override
	public TbIntegralProduct selectByPrimaryKey(int parseInt) {
		// TODO Auto-generated method stub
		return productMapper.selectByPrimaryKey(parseInt);
	}

	@Override
	public List<TbIntegralProduct> querryByLike(String productName) {
		// TODO Auto-generated method stub
		TbIntegralProductExample example = new TbIntegralProductExample();
		example.createCriteria().andProductNameLike("%"+ productName + "%");
		return this.productMapper.selectByExample(example);
	}

}
