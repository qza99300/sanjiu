package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbActivityApply;
import com.atwangsi.user.model.TbActivityApplyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbActivityApplyMapper {
    long countByExample(TbActivityApplyExample example);

    int deleteByExample(TbActivityApplyExample example);

    int deleteByPrimaryKey(Integer applyId);

    int insert(TbActivityApply record);

    int insertSelective(TbActivityApply record);

    List<TbActivityApply> selectByExample(TbActivityApplyExample example);

    TbActivityApply selectByPrimaryKey(Integer applyId);

    int updateByExampleSelective(@Param("record") TbActivityApply record, @Param("example") TbActivityApplyExample example);

    int updateByExample(@Param("record") TbActivityApply record, @Param("example") TbActivityApplyExample example);

    int updateByPrimaryKeySelective(TbActivityApply record);

    int updateByPrimaryKey(TbActivityApply record);

	List<TbActivityApply> selectApply(int id);

	TbActivityApply selectObj(TbActivityApply record);
}