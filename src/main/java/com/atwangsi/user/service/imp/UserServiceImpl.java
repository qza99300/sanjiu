package com.atwangsi.user.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.user.dao.TbUserMapper;
import com.atwangsi.user.model.TbUser;
import com.atwangsi.user.model.TbUserExample;
import com.atwangsi.user.model.TbUserExample.Criteria;
import com.atwangsi.user.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private TbUserMapper userMapper;

	@Override
	public Boolean saveUser(TbUser user) {
		
		int i = this.userMapper.insertSelective(user);

		return i > 0;
	}

	@Override
	public void deleteByIds(String userId) {
		// 存储需要删除的id
		ArrayList<Integer> ids = new ArrayList<>();

		try {
			// 根据“,”截取所有id
			String[] id = userId.split(",");

			for (String string : id) {
				int i;

				i = Integer.parseInt(string);

				ids.add(i);
			}

			// 创建该example对象
			TbUserExample example = new TbUserExample();

			Criteria criteria = example.createCriteria();
			// 把需要删除的id集合存入criteria中
			criteria.andUserIdIn(ids);

			// 执行批量删除操作
			this.userMapper.deleteByExample(example);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void updateUser(TbUser user) {

		//检查用户名是否唯一
//		boolean bool = checkLoginName(user.getLoginname());
		
		this.userMapper.updateByPrimaryKeySelective(user);

	}

	public TbUser login(TbUser user) {

		TbUserExample example = new TbUserExample();

		Criteria criteria = example.createCriteria();

		criteria.andLoginnameEqualTo(user.getLoginname());
		criteria.andPasswordEqualTo(user.getPassword());

		List<TbUser> list = this.userMapper.selectByExample(example);

		if (list.size() == 1) {
			return list.get(0);
		}

		return null;

	}

	@Override
	public TbUser login(String loginname, String password) {
		// TODO Auto-generated method stub
		TbUserExample example = new TbUserExample();

		Criteria criteria = example.createCriteria();

		criteria.andLoginnameEqualTo(loginname);
		criteria.andPasswordEqualTo(password);
		
		List<TbUser> list = this.userMapper.selectByExample(example);
		
		if (list.size() == 1) {
			
			return list.get(0);
		}
		
		return null;
	}

	@Override
	public TbUser querryUserById(Integer userId) {
		// TODO Auto-generated method stub
		TbUser user = this.userMapper.selectByPrimaryKey(userId);
		return user;
	}

	/**
	 * 检查用户的唯一性
	 * @param loginacct
	 * @return
	 */
	public boolean checkLoginName(String loginName){
		//查询数据库账户是否存在
		TbUserExample example = new TbUserExample();
		Criteria criteria = example.createCriteria();
		criteria.andLoginnameEqualTo(loginName);
		long l = userMapper.countByExample(example);
		return l == 0;
	}

	@Override
	public Boolean updatePassword(String loginname, String oldPassword, Integer userId, String password) {
		// TODO Auto-generated method stub
		TbUser tbUser = new TbUser();
		tbUser.setPassword(password);
		tbUser.setUserId(userId);
		try {
			//查出来的用户信息
			TbUser user = this.userMapper.selectByPrimaryKey(userId);
			//对比用户密码和账号信息
			if (user.getLoginname().equals(loginname) && user.getPassword().equals(oldPassword)) {
				this.userMapper.updateByPrimaryKeySelective(tbUser);
				return true;
			}
			return false;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Boolean updatePassword(String oldPassword, TbUser user) {
		// TODO Auto-generated method stub
		Integer id = user.getUserId();
		
		TbUser selectUser = this.userMapper.selectByPrimaryKey(id);
		
		if (selectUser.getLoginname().equals(user.getLoginname()) && selectUser.getPassword().equals(oldPassword)) {
			this.userMapper.updateByPrimaryKeySelective(user);
			return true;
		}
		
		return false;
	}

	@Override
	public List<TbUser> getAllUser() {
		// TODO Auto-generated method stub
		return this.userMapper.selectByExample(null);
	}

	@Override
	public List<TbUser> querryUserOne(Integer userId) {
		// TODO Auto-generated method stub
		List<TbUser> list = new ArrayList<>();
		list.add(querryUserById(userId));
		return list;
	}

	@Override
	public List<TbUser> querryByLike(String userName) {
		// TODO Auto-generated method stub
		TbUserExample example = new TbUserExample();
		example.createCriteria().andUserNameLike("%" +userName + "%");
		return this.userMapper.selectByExample(example);
	}

	//根据微信查询对象
	@Override
	public TbUser selectweixin(String open) {
		
		return userMapper.selectweixin(open);
	}
}