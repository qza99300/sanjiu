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

	//点赞加1
    Integer updateLikeCount(Integer topicId);
    
  //显示所有社区信息
    List<TbTopicManage> selectTbTopicObj();
    
  //最热社区信息
    List<TbTopicManage> selectTbTopicHottest();

}
