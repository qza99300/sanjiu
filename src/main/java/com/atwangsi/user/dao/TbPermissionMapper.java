package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbPermission;
import com.atwangsi.user.model.TbPermissionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbPermissionMapper {
    long countByExample(TbPermissionExample example);

    int deleteByExample(TbPermissionExample example);

    int deleteByPrimaryKey(Integer permissionId);

    int insert(TbPermission record);

    int insertSelective(TbPermission record);

    List<TbPermission> selectByExample(TbPermissionExample example);

    TbPermission selectByPrimaryKey(Integer permissionId);

    int updateByExampleSelective(@Param("record") TbPermission record, @Param("example") TbPermissionExample example);

    int updateByExample(@Param("record") TbPermission record, @Param("example") TbPermissionExample example);

    int updateByPrimaryKeySelective(TbPermission record);

    int updateByPrimaryKey(TbPermission record);

	List<TbPermission> getUserPermissions(Integer userId);

	List<TbPermission> selectRolesPermissions(Integer roleId);
}