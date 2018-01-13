package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbActivityManage;
import com.atwangsi.user.model.TbActivityManageExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbActivityManageMapper {
    long countByExample(TbActivityManageExample example);

    int deleteByExample(TbActivityManageExample example);

    int deleteByPrimaryKey(Integer activityId);

    int insert(TbActivityManage record);

    int insertSelective(TbActivityManage record);

    List<TbActivityManage> selectByExampleWithBLOBs(TbActivityManageExample example);

    List<TbActivityManage> selectByExample(TbActivityManageExample example);

    TbActivityManage selectByPrimaryKey(Integer activityId);

    int updateByExampleSelective(@Param("record") TbActivityManage record, @Param("example") TbActivityManageExample example);

    int updateByExampleWithBLOBs(@Param("record") TbActivityManage record, @Param("example") TbActivityManageExample example);

    int updateByExample(@Param("record") TbActivityManage record, @Param("example") TbActivityManageExample example);

    int updateByPrimaryKeySelective(TbActivityManage record);

    int updateByPrimaryKeyWithBLOBs(TbActivityManage record);

    int updateByPrimaryKey(TbActivityManage record);

	//显示最新活动
    List<TbActivityManage> selectList();
    
    //显示历史活动
    List<TbActivityManage> selectHistory();
}