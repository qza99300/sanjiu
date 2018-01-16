package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbInteractInterflow;
import com.atwangsi.user.model.TbInteractInterflowExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbInteractInterflowMapper {
    long countByExample(TbInteractInterflowExample example);

    int deleteByExample(TbInteractInterflowExample example);

    int deleteByPrimaryKey(Integer interactId);

    int insert(TbInteractInterflow record);

    int insertSelective(TbInteractInterflow record);

    List<TbInteractInterflow> selectByExample(TbInteractInterflowExample example);

    TbInteractInterflow selectByPrimaryKey(Integer interactId);

    int updateByExampleSelective(@Param("record") TbInteractInterflow record, @Param("example") TbInteractInterflowExample example);

    int updateByExample(@Param("record") TbInteractInterflow record, @Param("example") TbInteractInterflowExample example);

    int updateByPrimaryKeySelective(TbInteractInterflow record);

    int updateByPrimaryKey(TbInteractInterflow record);
}