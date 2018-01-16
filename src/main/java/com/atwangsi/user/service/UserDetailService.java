package com.atwangsi.user.service;

import java.util.List;

import com.atwangsi.user.model.TbUserIntegralDetail;

public interface UserDetailService {

	List<TbUserIntegralDetail> querryByUserId(Integer userId);

	Boolean add(TbUserIntegralDetail userIntegralDetail);

}
