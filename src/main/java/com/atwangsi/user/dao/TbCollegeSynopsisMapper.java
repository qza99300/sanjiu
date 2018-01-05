package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbCollegeSynopsis;
import com.atwangsi.user.model.TbCollegeSynopsisExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbCollegeSynopsisMapper {
    long countByExample(TbCollegeSynopsisExample example);

    int deleteByExample(TbCollegeSynopsisExample example);

    int deleteByPrimaryKey(Integer collegeId);

    int insert(TbCollegeSynopsis record);

    int insertSelective(TbCollegeSynopsis record);

    List<TbCollegeSynopsis> selectByExample(TbCollegeSynopsisExample example);

    TbCollegeSynopsis selectByPrimaryKey(Integer collegeId);

    int updateByExampleSelective(@Param("record") TbCollegeSynopsis record, @Param("example") TbCollegeSynopsisExample example);

    int updateByExample(@Param("record") TbCollegeSynopsis record, @Param("example") TbCollegeSynopsisExample example);

    int updateByPrimaryKeySelective(TbCollegeSynopsis record);

    int updateByPrimaryKey(TbCollegeSynopsis record);
}