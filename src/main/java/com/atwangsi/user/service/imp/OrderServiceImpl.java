package com.atwangsi.user.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.user.dao.TbExchangeOrderMapper;
import com.atwangsi.user.model.TbExchangeOrder;
import com.atwangsi.user.model.TbExchangeOrderExample;
import com.atwangsi.user.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private TbExchangeOrderMapper orderMapper;
	
	@Override
	public Boolean saveOrder(TbExchangeOrder order) {
		// TODO Auto-generated method stub
		return this.orderMapper.insertSelective(order) > 0;
	}

	@Override
	public Boolean deleteOrderByIds(String orderIds) {
		// TODO Auto-generated method stub
		List<Integer> idList = new ArrayList<>();
		
		String[] split = orderIds.split(",");
		
		for (String string : split) {
			
			try {
				idList.add(Integer.parseInt(string));
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
		
		}
		
		TbExchangeOrderExample example = new TbExchangeOrderExample();
		
		example.createCriteria().andIdIn(idList);
		
		return this.orderMapper.deleteByExample(example) > 0;
	}

	@Override
	public Boolean updateOrder(TbExchangeOrder order) {
		// TODO Auto-generated method stub
		return this.orderMapper.updateByPrimaryKeySelective(order) > 0;
	}

	@Override
	public List<TbExchangeOrder> queryAll() {
		// TODO Auto-generated method stub
		return this.orderMapper.selectByExample(null);
	}

	@Override
	public TbExchangeOrder querryOne(Integer id) {
		// TODO Auto-generated method stub
		return this.orderMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<TbExchangeOrder> querryByUserId(Integer userId) {
		// TODO Auto-generated method stub
		TbExchangeOrderExample example = new TbExchangeOrderExample();
		
		example.createCriteria().andUserIdEqualTo(userId);
		
		return this.orderMapper.selectByExample(example);
	}

	@Override
	public List<TbExchangeOrder> querryByLike(String productName) {
		// TODO Auto-generated method stub
		TbExchangeOrderExample example = new TbExchangeOrderExample();
		example.createCriteria().andProductNameLike("%"+productName+"%");
		return this.orderMapper.selectByExample(example);
	} 

}
