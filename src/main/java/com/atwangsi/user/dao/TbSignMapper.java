package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbSign;
import com.atwangsi.user.model.TbSignExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbSignMapper {
    long countByExample(TbSignExample example);

    int deleteByExample(TbSignExample example);

    int deleteByPrimaryKey(Integer signid);

    int insert(TbSign record);

    int insertSelective(TbSign record);

    List<TbSign> selectByExample(TbSignExample example);

    TbSign selectByPrimaryKey(Integer signid);

    int updateByExampleSelective(@Param("record") TbSign record, @Param("example") TbSignExample example);

    int updateByExample(@Param("record") TbSign record, @Param("example") TbSignExample example);

    int updateByPrimaryKeySelective(TbSign record);

    int updateByPrimaryKey(TbSign record);

	TbSign selectObj(Integer userid, String signdate);

	int addsign(TbSign sign);
}