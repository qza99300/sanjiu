package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbUserrole;
import com.atwangsi.user.model.TbUserroleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbUserroleMapper {
    long countByExample(TbUserroleExample example);

    int deleteByExample(TbUserroleExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbUserrole record);

    int insertSelective(TbUserrole record);

    List<TbUserrole> selectByExample(TbUserroleExample example);

    TbUserrole selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbUserrole record, @Param("example") TbUserroleExample example);

    int updateByExample(@Param("record") TbUserrole record, @Param("example") TbUserroleExample example);

    int updateByPrimaryKeySelective(TbUserrole record);

    int updateByPrimaryKey(TbUserrole record);

	Boolean insertUserRoles(@Param("userId") Integer userId, @Param("roleIds") List<Integer> roleIds);

	
}