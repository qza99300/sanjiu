package com.atwangsi.user.service;

import java.util.List;

import com.atwangsi.user.model.TbConsignee;

public interface ConsigneeService {

	List<TbConsignee> querryAllConsignee();

	List<TbConsignee> querryOneConsignee(Integer userId);

	Boolean updateConsignee(TbConsignee consignee);

	Boolean deleteById(String consigneeIds);

	Boolean saveConsignee(TbConsignee consignee);

	List<TbConsignee> querryById(Integer consigneeId);

	List<TbConsignee> querryByLike(String consigneeName);

}
