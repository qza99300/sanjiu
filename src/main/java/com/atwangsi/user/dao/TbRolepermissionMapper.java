package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbRolepermission;
import com.atwangsi.user.model.TbRolepermissionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbRolepermissionMapper {
    long countByExample(TbRolepermissionExample example);

    int deleteByExample(TbRolepermissionExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbRolepermission record);

    int insertSelective(TbRolepermission record);

    List<TbRolepermission> selectByExample(TbRolepermissionExample example);

    TbRolepermission selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbRolepermission record, @Param("example") TbRolepermissionExample example);

    int updateByExample(@Param("record") TbRolepermission record, @Param("example") TbRolepermissionExample example);

    int updateByPrimaryKeySelective(TbRolepermission record);

    int updateByPrimaryKey(TbRolepermission record);

	void insertRolePermissions(Integer roleId, List<Integer> pidList);
}