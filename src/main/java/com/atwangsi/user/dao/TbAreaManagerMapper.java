package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbAreaManager;
import com.atwangsi.user.model.TbAreaManagerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbAreaManagerMapper {
    long countByExample(TbAreaManagerExample example);

    int deleteByExample(TbAreaManagerExample example);

    int deleteByPrimaryKey(Integer areaId);

    int insert(TbAreaManager record);

    int insertSelective(TbAreaManager record);

    List<TbAreaManager> selectByExample(TbAreaManagerExample example);

    TbAreaManager selectByPrimaryKey(Integer areaId);

    int updateByExampleSelective(@Param("record") TbAreaManager record, @Param("example") TbAreaManagerExample example);

    int updateByExample(@Param("record") TbAreaManager record, @Param("example") TbAreaManagerExample example);

    int updateByPrimaryKeySelective(TbAreaManager record);

    int updateByPrimaryKey(TbAreaManager record);
}