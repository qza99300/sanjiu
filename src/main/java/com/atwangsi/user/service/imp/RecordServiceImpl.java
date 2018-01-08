package com.atwangsi.user.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.user.dao.TbExchangeRecordMapper;
import com.atwangsi.user.model.TbExchangeRecord;
import com.atwangsi.user.model.TbExchangeRecordExample;
import com.atwangsi.user.service.RecordService;

@Service
public class RecordServiceImpl implements RecordService {

	@Autowired
	private TbExchangeRecordMapper recordMapper;

	@Override
	public Boolean addRecord(TbExchangeRecord record) {
		// TODO Auto-generated method stub
		return this.recordMapper.insertSelective(record) > 0;
	}

	@Override
	public Boolean deleteRecordById(Integer id) {
		// TODO Auto-generated method stub
		return this.recordMapper.deleteByPrimaryKey(id) > 0 ;
	}

	@Override
	public Boolean updateRecord(TbExchangeRecord record) {
		// TODO Auto-generated method stub
		return this.recordMapper.updateByPrimaryKeySelective(record) > 0;
	}

	@Override
	public List<TbExchangeRecord> queryAll() {
		// TODO Auto-generated method stub
		return this.recordMapper.selectByExample(null);
	}

	@Override
	public List<TbExchangeRecord> querryByRecordId(Integer id) {
		// TODO Auto-generated method stub
		List<TbExchangeRecord> list = new ArrayList<>();
		list.add(this.recordMapper.selectByPrimaryKey(id));
		
		return list;
	}

	@Override
	public List<TbExchangeRecord> selectRecord(Integer convertStatus) {
		// TODO Auto-generated method stub
		TbExchangeRecordExample example = new TbExchangeRecordExample();
		
		example.createCriteria().andConvertStatusEqualTo(convertStatus);
		
		return this.recordMapper.selectByExample(example);
	}

	@Override
	public List<TbExchangeRecord> querryByRecordPhone(String phone) {
		// TODO Auto-generated method stub
		TbExchangeRecordExample example = new TbExchangeRecordExample();
		example.createCriteria().andConvertPhoneEqualTo(phone);
		
//		List<TbExchangeRecord> list = this.recordMapper.selectByExample(example);
		
		return this.recordMapper.selectByExample(example);
	}
}
