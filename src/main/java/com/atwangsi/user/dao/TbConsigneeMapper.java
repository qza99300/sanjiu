package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbConsignee;
import com.atwangsi.user.model.TbConsigneeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbConsigneeMapper {
    long countByExample(TbConsigneeExample example);

    int deleteByExample(TbConsigneeExample example);

    int deleteByPrimaryKey(Integer consigneeId);

    int insert(TbConsignee record);

    int insertSelective(TbConsignee record);

    List<TbConsignee> selectByExample(TbConsigneeExample example);

    TbConsignee selectByPrimaryKey(Integer consigneeId);

    int updateByExampleSelective(@Param("record") TbConsignee record, @Param("example") TbConsigneeExample example);

    int updateByExample(@Param("record") TbConsignee record, @Param("example") TbConsigneeExample example);

    int updateByPrimaryKeySelective(TbConsignee record);

    int updateByPrimaryKey(TbConsignee record);
}