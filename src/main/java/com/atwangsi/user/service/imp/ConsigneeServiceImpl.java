package com.atwangsi.user.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.user.dao.TbConsigneeMapper;
import com.atwangsi.user.dao.TbUserMapper;
import com.atwangsi.user.model.TbConsignee;
import com.atwangsi.user.model.TbConsigneeExample;
import com.atwangsi.user.model.TbUser;
import com.atwangsi.user.service.ConsigneeService;

@Service
public class ConsigneeServiceImpl implements ConsigneeService {
	
	@Autowired
	private TbConsigneeMapper consigneeMapper;
	
	@Autowired
	private TbUserMapper userMapper;

	
	//查询所有，并降序返回
	@Override
	public List<TbConsignee> querryAllConsignee() {
		// TODO Auto-generated method stub
		List<TbConsignee> list = new ArrayList<>();
		
		List<TbConsignee> selectList = this.consigneeMapper.selectByExample(null);
		
		for (int i = selectList.size()-1; i >= 0; i--) {
			list.add(selectList.get(i));
		}
		
		
		return list;
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
		//根据用户id查询用户，把用户名设置地址中
		Integer userId = consignee.getUserId();
		TbUser user = this.userMapper.selectByPrimaryKey(userId);
		consignee.setUserName(user.getUserName());
		
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

	//根据兑换人名称来进行模糊查询
	@Override
	public List<TbConsignee> querryByLike(String consigneeName) {
		// TODO Auto-generated method stub
		TbConsigneeExample example = new TbConsigneeExample();
		example.createCriteria().andConsigneeNameLike("%"+consigneeName + "%");
		return this.consigneeMapper.selectByExample(example);
	}
	

	@Override
	public TbConsignee selectByPrimaryKey(Integer consigneeId) {
		
		return consigneeMapper.selectByPrimaryKey(consigneeId);
	}

}
