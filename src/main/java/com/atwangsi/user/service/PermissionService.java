package com.atwangsi.user.service;

import java.util.List;

import com.atwangsi.user.model.TbPermission;

public interface PermissionService {
	
	List<TbPermission> getAllMenus();

	List<TbPermission> getRolePermissions(Integer roleId);

	void updatePermissions(Integer roleId, String permissionIds);

	List<TbPermission> getAllPermissions();

	List<TbPermission> getUserMenus(Integer userId);

}
