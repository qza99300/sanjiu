package com.atwangsi.user.service;

import java.util.List;

import com.atwangsi.user.model.TbExchangeOrder;

public interface OrderService {

	Boolean saveOrder(TbExchangeOrder order);

	Boolean deleteOrderByIds(String orderIds);

	Boolean updateOrder(TbExchangeOrder order);

	List<TbExchangeOrder> queryAll();

	TbExchangeOrder querryOne(Integer id);

	List<TbExchangeOrder> querryByUserId(Integer userId);

}
