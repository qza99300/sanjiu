package com.atwangsi.user.service;

import java.util.List;

import com.atwangsi.user.model.TbIntegralRule;
import com.atwangsi.user.model.TbRole;

public interface RoleService {

	boolean removeRoleByRoleId(Integer roleId);

	boolean registRole(TbRole role);

	List<TbRole> getAllRoles();

	boolean addUserRole(Integer userId, String roleIds);

	List<TbRole> getUserRoles(Integer userId);

	Boolean deleteRoleById(Integer userId, String roleIds);

	List<TbRole> getRoleById(Integer roleId);

	Boolean updateRole(TbRole role);
	
}
