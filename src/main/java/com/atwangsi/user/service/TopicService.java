package com.atwangsi.user.service;

import java.util.List;

import com.atwangsi.user.model.TbTopicManage;

public interface TopicService {

	Boolean addTopic(TbTopicManage topic);

	Boolean deleteTopicById(Integer topicId);

	Boolean updateTopic(TbTopicManage topic);

	List<TbTopicManage> queryAll();

	List<TbTopicManage> querryBytopicId(Integer topicId);

	List<TbTopicManage> querryByLike(String userName);

}
