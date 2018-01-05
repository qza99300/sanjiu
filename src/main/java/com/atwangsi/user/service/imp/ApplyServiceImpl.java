package com.atwangsi.user.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.user.dao.TbActivityApplyMapper;
import com.atwangsi.user.model.TbActivityApply;
import com.atwangsi.user.model.TbActivityApplyExample;
import com.atwangsi.user.service.ApplyService;

@Service
public class ApplyServiceImpl implements ApplyService {
	
	@Autowired
	private TbActivityApplyMapper applyMapper;

	@Override
	public List<TbActivityApply> querryAll() {
		// TODO Auto-generated method stub
		return this.applyMapper.selectByExample(null);
	}

	@Override
	public List<TbActivityApply> querryByUserId(Integer userId) {
		// TODO Auto-generated method stub
		TbActivityApplyExample example = new TbActivityApplyExample();
		
		example.createCriteria().andUserIdEqualTo(userId);
		
		return this.applyMapper.selectByExample(example);
	}

	@Override
	public List<TbActivityApply> querryByActivityId(Integer activityId) {
		// TODO Auto-generated method stub
		TbActivityApplyExample example = new TbActivityApplyExample();
		
		example.createCriteria().andActivityIdEqualTo(activityId);
		
		return this.applyMapper.selectByExample(example);
	}

	@Override
	public List<TbActivityApply> querryOne(Integer applyId) {
		// TODO Auto-generated method stub
		List<TbActivityApply> list = new ArrayList<>();
		TbActivityApply activityApply = this.applyMapper.selectByPrimaryKey(applyId);
		list.add(activityApply);
		return list;
	}

	@Override
	public Boolean addApply(TbActivityApply activityApply) {
		// TODO Auto-generated method stub
		return this.applyMapper.insertSelective(activityApply) > 0;
	}

	@Override
	public Boolean deleteApplyById(Integer applyId) {
		// TODO Auto-generated method stub
		return this.applyMapper.deleteByPrimaryKey(applyId) > 0;
	}

	@Override
	public Boolean updateApply(TbActivityApply activityApply) {
		// TODO Auto-generated method stub
		return this.applyMapper.updateByPrimaryKeySelective(activityApply) > 0;
	}

	@Override
	public TbActivityApply selectByPrimaryKey(int parseInt) {
		// TODO Auto-generated method stub
		return this.applyMapper.selectByPrimaryKey(parseInt);
	}

}
