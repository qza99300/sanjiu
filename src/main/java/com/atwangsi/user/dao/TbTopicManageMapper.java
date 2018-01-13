package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbTopicManage;
import com.atwangsi.user.model.TbTopicManageExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbTopicManageMapper {
    long countByExample(TbTopicManageExample example);

    int deleteByExample(TbTopicManageExample example);

    int deleteByPrimaryKey(Integer topicId);

    int insert(TbTopicManage record);

    int insertSelective(TbTopicManage record);

    List<TbTopicManage> selectByExampleWithBLOBs(TbTopicManageExample example);

    List<TbTopicManage> selectByExample(TbTopicManageExample example);

    TbTopicManage selectByPrimaryKey(Integer topicId);

    int updateByExampleSelective(@Param("record") TbTopicManage record, @Param("example") TbTopicManageExample example);

    int updateByExampleWithBLOBs(@Param("record") TbTopicManage record, @Param("example") TbTopicManageExample example);

    int updateByExample(@Param("record") TbTopicManage record, @Param("example") TbTopicManageExample example);

    int updateByPrimaryKeySelective(TbTopicManage record);

    int updateByPrimaryKeyWithBLOBs(TbTopicManage record);

    int updateByPrimaryKey(TbTopicManage record);

	//显示所有社区信息
    List<TbTopicManage> selectTbTopicObj();
    
    //最热社区信息
    List<TbTopicManage> selectTbTopicHottest();
}