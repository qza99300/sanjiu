package com.atwangsi.user.service;

import java.util.List;

import com.atwangsi.user.model.TbExchangeRecord;

public interface RecordService {

	Boolean addRecord(TbExchangeRecord record);

	Boolean deleteRecordById(Integer id);

	Boolean updateRecord(TbExchangeRecord record);

	List<TbExchangeRecord> queryAll();

	List<TbExchangeRecord> querryByRecordId(Integer id);

	List<TbExchangeRecord> selectRecord(Integer convertStatus);

	List<TbExchangeRecord> querryByLike(String userName);

	//查询个人兑换信息
    List<TbExchangeRecord> selectexchange(int id);
    
    //查询单个兑换信息
    TbExchangeRecord selectsingle(int id);

}
