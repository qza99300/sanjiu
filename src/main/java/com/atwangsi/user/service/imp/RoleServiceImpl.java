package com.atwangsi.user.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.user.dao.TbRoleMapper;
import com.atwangsi.user.dao.TbUserroleMapper;
import com.atwangsi.user.model.TbRole;
import com.atwangsi.user.model.TbRoleExample;
import com.atwangsi.user.model.TbUserroleExample;
import com.atwangsi.user.model.TbUserroleExample.Criteria;
import com.atwangsi.user.service.RoleService;

/**
 * 
 * 
 * @author ou
 *
 */
@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	private TbRoleMapper roleMapper;

	@Autowired
	private TbUserroleMapper userroleMapper;

	/**
	 * 新增角色
	 */
	@Override
	public boolean registRole(TbRole role) {
		return this.roleMapper.insertSelective(role) > 0;
	}

	/**
	 * 查询所有的角色
	 */
	@Override
	public List<TbRole> getAllRoles() {
		return this.roleMapper.selectByExample(null);
	}

	/**
	 * 获取当前用户已经有的角色
	 */
	public List<TbRole> getUserRoles(Integer userId) {

		List<TbRole> roles = roleMapper.getUserRoles(userId);

		return roles;
	}

	/**
	 * 根据角色id删除
	 */
	@Override
	public boolean removeRoleByRoleId(Integer roleId) {
		return this.roleMapper.deleteByPrimaryKey(roleId) > 0;
	}

	/**
	 * 根据用户id添加角色
	 */
	@Override
	public boolean addUserRole(Integer userId, String roleIds) {

		// 存储需要删除的role的id
		List<Integer> list = new ArrayList<>();

		String[] split = roleIds.split(",");

		if (split == null) {
			return false;
		}
		for (String string : split) {

			try {
				int i = Integer.parseInt(string);

				list.add(i);
			} catch (NumberFormatException e) {

				e.printStackTrace();
			}
		}

		// 删除存储之前的角色
		TbUserroleExample example = new TbUserroleExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserIdEqualTo(userId);
		criteria.andRoleIdIn(list);

		// 执行删除操作
		this.userroleMapper.deleteByExample(example);

		// 执行添加操作
		this.userroleMapper.insertUserRoles(userId, list);

		return true;
	}

	@Override
	public Boolean deleteRoleById(Integer userId, String roleIds) {
		// TODO Auto-generated method stub
		
		List<Integer> list = new ArrayList<>();
		
		String[] split = roleIds.split(",");
		
		for (String string : split) {
			try {
				Integer parseInt = Integer.parseInt(string);
				list.add(parseInt);
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
		}
		
		TbUserroleExample example = new TbUserroleExample();
		
		Criteria criteria = example.createCriteria();
		criteria.andUserIdEqualTo(userId);
		criteria.andRoleIdIn(list);
		
		this.userroleMapper.deleteByExample(example);
		
		return false;
	}

	@Override
	public List<TbRole> getRoleById(Integer roleId) {
		// TODO Auto-generated method stub
		
		TbRoleExample example = new TbRoleExample();
		
		example.createCriteria().andRoleIdEqualTo(roleId);
		
		return this.roleMapper.selectByExample(example);
	}

	@Override
	public Boolean updateRole(TbRole role) {
		// TODO Auto-generated method stub
		
		
		
		return this.roleMapper.updateByPrimaryKey(role) > 0;
	}

	@Override
	public List<TbRole> querryByLike(String roleName) {
		// TODO Auto-generated method stub
		TbRoleExample example = new TbRoleExample();
		example.createCriteria().andRoleNameLike("%"+roleName+"%");
		return this.roleMapper.selectByExample(example);
	}


}

