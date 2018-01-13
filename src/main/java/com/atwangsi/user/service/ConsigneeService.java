package com.atwangsi.user.service;

import java.util.List;

import com.atwangsi.base.model.ResultVO;
import com.atwangsi.user.model.TbConsignee;

public interface ConsigneeService {

//	ResultVO<Object> querryAllConsignee();
	
	List<TbConsignee> querryAllConsignee();

	List<TbConsignee> querryOneConsignee(Integer userId);

	Boolean updateConsignee(TbConsignee consignee);

	Boolean deleteById(String consigneeIds);

	Boolean saveConsignee(TbConsignee consignee);

	List<TbConsignee> querryById(Integer consigneeId);

	List<TbConsignee> querryByLike(String consigneeName);

//	List<TbConsignee> querryByLikeByUserName(String userName);

	TbConsignee selectByPrimaryKey(Integer consigneeId);

}
