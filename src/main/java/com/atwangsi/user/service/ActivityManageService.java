package com.atwangsi.user.service;

import java.util.List;

import com.atwangsi.user.model.TbActivityManage;

public interface ActivityManageService {

	Boolean saveActivity(TbActivityManage activityManage);

	Boolean deleteActivityByIds(String activityIds);

	Boolean updateActivity(TbActivityManage activityManage);

	List<TbActivityManage> querryAll();

	List<TbActivityManage> querryOne(Integer activityId);

	TbActivityManage selectByPrimaryKey(Integer parseInt);

}
