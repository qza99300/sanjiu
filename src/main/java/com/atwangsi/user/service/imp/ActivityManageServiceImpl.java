package com.atwangsi.user.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.user.dao.TbActivityManageMapper;
import com.atwangsi.user.model.TbActivityManage;
import com.atwangsi.user.model.TbActivityManageExample;
import com.atwangsi.user.service.ActivityManageService;

@Service
public class ActivityManageServiceImpl implements ActivityManageService {

	@Autowired
	private TbActivityManageMapper activityManageMapper;
	
	@Override
	public Boolean saveActivity(TbActivityManage activityManage) {
		// TODO Auto-generated method stub
		return this.activityManageMapper.insertSelective(activityManage) > 0;
	}

	@Override
	public Boolean deleteActivityByIds(String activityIds) {
		// TODO Auto-generated method stub
		List<Integer> idList = new ArrayList<>();
		String[] split = activityIds.split(",");
		for (String string : split) {
			
			try {
				idList.add(Integer.parseInt(string));
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
		}
		TbActivityManageExample example = new TbActivityManageExample();
		
		example.createCriteria().andActivityIdIn(idList);
		
		return this.activityManageMapper.deleteByExample(example) > 0;
	}

	@Override
	public Boolean updateActivity(TbActivityManage activityManage) {
		// TODO Auto-generated method stub
		int i = this.activityManageMapper.updateByPrimaryKeySelective(activityManage);
		return i > 0;
	}

	@Override
	public List<TbActivityManage> querryAll() {
		// TODO Auto-generated method stub
		return this.activityManageMapper.selectByExample(null);
	}

	@Override
	public List<TbActivityManage> querryOne(Integer activityId) {
		// TODO Auto-generated method stub
		TbActivityManageExample example = new TbActivityManageExample();
		
		example.createCriteria().andActivityIdEqualTo(activityId);
		
		return this.activityManageMapper.selectByExample(example);
	}

	@Override
	public TbActivityManage selectByPrimaryKey(Integer parseInt) {
		
		return this.activityManageMapper.selectByPrimaryKey(parseInt);
	}

	@Override
	public List<TbActivityManage> querryByLike(String activityTitle) {
		// TODO Auto-generated method stub
		TbActivityManageExample example = new TbActivityManageExample();
		example.createCriteria().andActivityTitleLike("%"+activityTitle+"%");
		return this.activityManageMapper.selectByExample(example);
	}
	

	//显示最新活动
	@Override
	public List<TbActivityManage> selectList() {
			
		return activityManageMapper.selectList();
	}

	//示历史活动
	@Override
	public List<TbActivityManage> selectHistory() {
			
		return activityManageMapper.selectHistory();
	}
}
