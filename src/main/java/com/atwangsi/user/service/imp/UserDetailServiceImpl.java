package com.atwangsi.user.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.user.dao.TbUserIntegralDetailMapper;
import com.atwangsi.user.model.TbUserIntegralDetail;
import com.atwangsi.user.model.TbUserIntegralDetailExample;
import com.atwangsi.user.service.UserDetailService;

@Service
public class UserDetailServiceImpl implements UserDetailService {
	
	@Autowired
	private TbUserIntegralDetailMapper userIntegralDetailMapper;

	
	//根据用户id查询用户的所有积分明细记录
	@Override
	public List<TbUserIntegralDetail> querryByUserId(Integer userId) {
		// TODO Auto-generated method stub
		TbUserIntegralDetailExample example = new TbUserIntegralDetailExample();
		example.createCriteria().andUserIdEqualTo(userId);
		return this.userIntegralDetailMapper.selectByExample(example);
	}

	//添加记录
	@Override
	public Boolean add(TbUserIntegralDetail userIntegralDetail) {
		// TODO Auto-generated method stub
		return this.userIntegralDetailMapper.insertSelective(userIntegralDetail) > 0;
	}

}
