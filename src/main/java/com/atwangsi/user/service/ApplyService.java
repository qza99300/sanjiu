package com.atwangsi.user.service;

import java.util.List;

import com.atwangsi.user.model.TbActivityApply;

public interface ApplyService {

	List<TbActivityApply> querryAll();

	List<TbActivityApply> querryByUserId(Integer userId);

	List<TbActivityApply> querryByActivityId(Integer activityId);

	List<TbActivityApply> querryOne(Integer applyId);

	Boolean addApply(TbActivityApply activityApply);

	Boolean deleteApplyById(Integer applyId);

	Boolean updateApply(TbActivityApply activityApply);

	TbActivityApply selectByPrimaryKey(int parseInt);

	List<TbActivityApply> querryByLike(String activityTitle);

}
