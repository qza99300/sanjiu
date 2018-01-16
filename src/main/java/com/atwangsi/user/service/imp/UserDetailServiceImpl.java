package com.atwangsi.user.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.user.dao.TbUserIntegralDetailMapper;
import com.atwangsi.user.model.TbUser;
import com.atwangsi.user.model.TbUserIntegralDetail;
import com.atwangsi.user.model.TbUserIntegralDetailExample;
import com.atwangsi.user.service.UserDetailService;
import com.atwangsi.user.service.UserService;

@Service
public class UserDetailServiceImpl implements UserDetailService {
	
	@Autowired
	private TbUserIntegralDetailMapper userIntegralDetailMapper;
	
	@Autowired
	private UserService userService;

	
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
		//获取当前用户的积分总数，并设置进去
		TbUser user = this.userService.querryUserById(userIntegralDetail.getUserId());
		userIntegralDetail.setSurplusIntegral(user.getIntegralCount());
		return this.userIntegralDetailMapper.insertSelective(userIntegralDetail) > 0;
	}

}
