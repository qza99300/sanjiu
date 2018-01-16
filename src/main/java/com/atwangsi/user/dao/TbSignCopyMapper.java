package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbSignCopy;
import com.atwangsi.user.model.TbSignCopyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbSignCopyMapper {
    long countByExample(TbSignCopyExample example);

    int deleteByExample(TbSignCopyExample example);

    int deleteByPrimaryKey(Integer signid);

    int insert(TbSignCopy record);

    int insertSelective(TbSignCopy record);

    List<TbSignCopy> selectByExample(TbSignCopyExample example);

    TbSignCopy selectByPrimaryKey(Integer signid);

    int updateByExampleSelective(@Param("record") TbSignCopy record, @Param("example") TbSignCopyExample example);

    int updateByExample(@Param("record") TbSignCopy record, @Param("example") TbSignCopyExample example);

    int updateByPrimaryKeySelective(TbSignCopy record);

    int updateByPrimaryKey(TbSignCopy record);
}