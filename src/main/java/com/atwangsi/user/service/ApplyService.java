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

	//查看个人报名信息
    List<TbActivityApply> selectApply(int id);
    
    //查询是否报名过
    TbActivityApply selectObj(TbActivityApply record);

}
