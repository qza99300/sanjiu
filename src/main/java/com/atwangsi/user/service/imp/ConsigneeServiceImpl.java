package com.atwangsi.user.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.user.dao.TbConsigneeMapper;
import com.atwangsi.user.model.TbConsignee;
import com.atwangsi.user.model.TbConsigneeExample;
import com.atwangsi.user.service.ConsigneeService;

@Service
public class ConsigneeServiceImpl implements ConsigneeService {
	
	@Autowired
	private TbConsigneeMapper consigneeMapper;

	@Override
	public List<TbConsignee> querryAllConsignee() {
		// TODO Auto-generated method stub
		return this.consigneeMapper.selectByExample(null);
	}

	@Override
	public List<TbConsignee> querryOneConsignee(Integer userId) {
		// TODO Auto-generated method stub
		TbConsigneeExample example = new TbConsigneeExample();
		
		example.createCriteria().andUserIdEqualTo(userId);
		
		return this.consigneeMapper.selectByExample(example);
	}

	@Override
	public Boolean updateConsignee(TbConsignee consignee) {
		// TODO Auto-generated method stub
		return this.consigneeMapper.updateByPrimaryKeySelective(consignee) > 0;
	}

	@Override
	public Boolean deleteById(String consigneeIds) {
		// TODO Auto-generated method stub
		
		List<Integer> idList = new ArrayList<>();
		
		String[] split = consigneeIds.split(",");
		
		for (String string : split) {
			try {
				Integer key = Integer.parseInt(string);
				
				idList.add(key);
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
		}
		
		TbConsigneeExample example = new TbConsigneeExample();
		
		example.createCriteria().andConsigneeIdIn(idList);
		
		return this.consigneeMapper.deleteByExample(example) > 0;
	}

	@Override
	public Boolean saveConsignee(TbConsignee consignee) {
		// TODO Auto-generated method stub
		return this.consigneeMapper.insertSelective(consignee) > 0;
	}

	@Override
	public List<TbConsignee> querryById(Integer consigneeId) {
		// TODO Auto-generated method stub
		List<TbConsignee> list = new ArrayList<>();
		TbConsignee consignee = this.consigneeMapper.selectByPrimaryKey(consigneeId);
		list.add(consignee);
		
		return list;
	}

	@Override
	public List<TbConsignee> querryByLike(String consigneeName) {
		// TODO Auto-generated method stub
		TbConsigneeExample example = new TbConsigneeExample();
		example.createCriteria().andConsigneeNameLike("%"+consigneeName + "%");
		return this.consigneeMapper.selectByExample(example);
	}

	

}
