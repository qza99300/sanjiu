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

    List<TbTopicManage> selectByExample(TbTopicManageExample example);

    TbTopicManage selectByPrimaryKey(Integer topicId);

    int updateByExampleSelective(@Param("record") TbTopicManage record, @Param("example") TbTopicManageExample example);

    int updateByExample(@Param("record") TbTopicManage record, @Param("example") TbTopicManageExample example);

    int updateByPrimaryKeySelective(TbTopicManage record);

    int updateByPrimaryKey(TbTopicManage record);

	List<TbTopicManage> selectTbTopicHottest();

	List<TbTopicManage> selectTbTopicObj();
}