package com.atwangsi.user.service.imp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.base.utils.StringUtil;
import com.atwangsi.user.dao.TbPermissionMapper;
import com.atwangsi.user.dao.TbRolepermissionMapper;
import com.atwangsi.user.model.TbPermission;
import com.atwangsi.user.model.TbRolepermissionExample;
import com.atwangsi.user.model.TbRolepermissionExample.Criteria;
import com.atwangsi.user.service.PermissionService;

/**
 * 待测试
 * @author ou
 *
 */
@Service
public class PermissionServiceImpl implements PermissionService {

	@Autowired
	private TbPermissionMapper permissionMapper;

	@Autowired
	private TbRolepermissionMapper rolePermissionMapper;

	/**
	 * 查出所有的菜单
	 */
	@Override
	public List<TbPermission> getAllMenus() {

		List<TbPermission> list = this.permissionMapper.selectByExample(null);

		// 构建菜单的子父类关系
		List<TbPermission> buildMenus = buildMenus(list);

		return buildMenus;
	}

	/**
	 * 根据角色id获取该用户权限
	 */
	@Override
	public List<TbPermission> getRolePermissions(Integer roleId) {
		
		
		return this.permissionMapper.selectRolesPermissions(roleId);
	}

	/**
	 * 更新角色信息
	 */
	@Override
	public void updatePermissions(Integer roleId, String permissionIds) {
			//更新权限前，把原来的权限全部删除
				if (StringUtil.isEmpty(permissionIds)) {
					//是空代表没有内容 也就是已经删除所有的意思
					TbRolepermissionExample example = new TbRolepermissionExample();
					Criteria criteria = example.createCriteria();
					criteria.andRoleIdEqualTo(roleId);
					rolePermissionMapper.deleteByExample(example);
					return ;
				}
			//没有权限，插入权限	
				TbRolepermissionExample example = new TbRolepermissionExample();
				Criteria criteria = example.createCriteria();
				criteria.andRoleIdEqualTo(roleId);
				rolePermissionMapper.deleteByExample(example);
				
				String[] split = permissionIds.split(",");
				List<Integer> pidList = new ArrayList<>();
				for (String str : split) {
					try {
						int parseInt = Integer.parseInt(str);
						pidList.add(parseInt);
					} catch (NumberFormatException e) {
					}
					
				}
				
				rolePermissionMapper.insertRolePermissions(roleId, pidList);

	}

	/**
	 * 查询所有的权限
	 */
	@Override
	public List<TbPermission> getAllPermissions() {
		
		return this.permissionMapper.selectByExample(null);
	}

	/**
	 * 构建菜单的子父类关系
	 * 
	 * @param list
	 * @return
	 */
	private List<TbPermission> buildMenus(List<TbPermission> list) {
		// 保存所有的父菜单
		List<TbPermission> parentsPer = new ArrayList<>();

		// 根据父菜单保存所有的子菜单进map中
		Map<Integer, TbPermission> map = new HashMap<Integer, TbPermission>();

		// 1、遍历查出所有的父菜单，也就是getPermissionId==0的
		for (TbPermission per : list) {
			if (per.getParentId() == 0) {
				// 把父菜单存入list中
				parentsPer.add(per);
				// 把父菜单存入到map中
				map.put(per.getPermissionId(), per);
			}
		}

		// 2、将所有的子菜单加入到相应的父菜单中
		for (TbPermission per : list) {
			// 获取到父菜单的id
			Integer pid = per.getParentId();
			// 根据父菜单的id把当前菜单设置进去
			if (pid != 0) {
				// 找到父菜单
				TbPermission permission = map.get(pid);
				// 添加进父菜单中
				permission.getChilds().add(per);
			}
		}
		return parentsPer;
	}

	@Override
	public List<TbPermission> getUserMenus(Integer userId) {
		// TODO Auto-generated method stub
		List<TbPermission> permissions =this.permissionMapper.getUserPermissions(userId);
		
		List<TbPermission> menus = buildMenus(permissions);
		return menus;
	}

}
