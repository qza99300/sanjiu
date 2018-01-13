package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbExchangeRecord;
import com.atwangsi.user.model.TbExchangeRecordExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbExchangeRecordMapper {
    long countByExample(TbExchangeRecordExample example);

    int deleteByExample(TbExchangeRecordExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbExchangeRecord record);

    int insertSelective(TbExchangeRecord record);

    List<TbExchangeRecord> selectByExample(TbExchangeRecordExample example);

    TbExchangeRecord selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbExchangeRecord record, @Param("example") TbExchangeRecordExample example);

    int updateByExample(@Param("record") TbExchangeRecord record, @Param("example") TbExchangeRecordExample example);

    int updateByPrimaryKeySelective(TbExchangeRecord record);

    int updateByPrimaryKey(TbExchangeRecord record);

	//��ѯ���˶һ���Ϣ
    List<TbExchangeRecord> selectexchange(int id);
    
    //��ѯ�����һ���Ϣ
    TbExchangeRecord selectsingle(int id);
}