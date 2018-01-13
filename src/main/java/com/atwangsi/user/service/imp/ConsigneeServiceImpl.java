package com.atwangsi.user.service.imp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.base.model.ResultVO;
import com.atwangsi.user.dao.TbConsigneeMapper;
import com.atwangsi.user.dao.TbUserMapper;
import com.atwangsi.user.model.TbConsignee;
import com.atwangsi.user.model.TbConsigneeExample;
import com.atwangsi.user.model.TbUser;
import com.atwangsi.user.model.TbUserExample;
import com.atwangsi.user.service.ConsigneeService;
import com.atwangsi.user.service.UserService;

@Service
public class ConsigneeServiceImpl implements ConsigneeService {
	
	@Autowired
	private TbConsigneeMapper consigneeMapper;
	
	@Autowired
	private TbUserMapper userMapper;

	//查询所有的地址信息，根据地址
//	@Override
//	public ResultVO<Object> querryAllConsignee() {
//		// TODO Auto-generated method stub
//		Map<String,Object> map = new HashMap<>();
//		List<Integer> userIdList = new ArrayList<>();
//		List<TbConsignee> conList = this.consigneeMapper.selectByExample(null);
//		
//		//获取所有的地址的userid信息
//		for (TbConsignee consignees : conList) {
//			Integer i = consignees.getUserId();
//			userIdList.add(i);
//		}
//		
//		TbUserExample example = new TbUserExample();
//		example.createCriteria().andUserIdIn(userIdList);
//		List<TbUser> userList = this.userMapper.selectByExample(example);
//		map.put("conList", conList);
//		
//		return ResultVO.success("查询成功", userList, map);
//	}
	
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

//	@Override
//	public List<TbConsignee> querryByLike(String userName) {
//		// TODO Auto-generated method stub
//		//存储id
//		List<Integer> list = new ArrayList<>();
//		TbConsigneeExample example = new TbConsigneeExample();
//		TbUserExample userExample = new TbUserExample();
//		userExample.createCriteria().andUserNameLike("%"+userName + "%");
//		List<TbUser> userList = this.userMapper.selectByExample(userExample);
//		
//		//模糊查询，查出符合条件的用户id
//		for (TbUser user : userList) {
//			Integer userId = user.getUserId();
//			list.add(userId);
//		}
//		
//		example.createCriteria().andUserIdIn(list);
//		
//		
//		return this.consigneeMapper.selectByExample(example);
//	}
	@Override
	public List<TbConsignee> querryByLike(String consigneeName) {
		// TODO Auto-generated method stub
		TbConsigneeExample example = new TbConsigneeExample();
		example.createCriteria().andConsigneeNameLike("%"+consigneeName + "%");
		return this.consigneeMapper.selectByExample(example);
	}
	
//	public List<TbConsignee> querryByLikeByUserName(String userName) {
//		
//		return this.consigneeMapper.querryByLikeByUserName(userName);
//	}

	@Override
	public TbConsignee selectByPrimaryKey(Integer consigneeId) {
		
		return consigneeMapper.selectByPrimaryKey(consigneeId);
	}

}
