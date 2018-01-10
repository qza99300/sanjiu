package com.atwangsi.user.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.user.dao.TbTopicManageMapper;
import com.atwangsi.user.model.TbTopicManage;
import com.atwangsi.user.model.TbTopicManageExample;
import com.atwangsi.user.service.TopicService;

@Service
public class TopicServiceImpl implements TopicService {
	
	@Autowired
	private TbTopicManageMapper topicManageMapper;

	@Override
	public Boolean addTopic(TbTopicManage topic) {
		// TODO Auto-generated method stub
		return this.topicManageMapper.insertSelective(topic) > 0;
	}

	@Override
	public Boolean deleteTopicById(Integer topicId) {
		// TODO Auto-generated method stub
		return this.topicManageMapper.deleteByPrimaryKey(topicId) > 0;
	}

	@Override
	public Boolean updateTopic(TbTopicManage topic) {
		// TODO Auto-generated method stub
		return this.topicManageMapper.updateByPrimaryKeySelective(topic) > 0;
	}

	@Override
	public List<TbTopicManage> queryAll() {
		// TODO Auto-generated method stub
		return this.topicManageMapper.selectByExample(null);
		
	}

	@Override
	public List<TbTopicManage> querryBytopicId(Integer topicId) {
		// TODO Auto-generated method stub
		List<TbTopicManage> arrayList = new ArrayList<>();
		arrayList.add(this.topicManageMapper.selectByPrimaryKey(topicId));
		return arrayList;
	}

	@Override
	public List<TbTopicManage> querryByLike(String userName) {
		// TODO Auto-generated method stub
		TbTopicManageExample example = new TbTopicManageExample();
		example.createCriteria().andUserNameLike("%" + userName +"%");
		return this.topicManageMapper.selectByExample(example);
	}
	
}
