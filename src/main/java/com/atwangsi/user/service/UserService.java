package com.atwangsi.user.service;

import java.util.List;

import com.atwangsi.user.model.TbUser;

public interface UserService {

	Boolean saveUser(TbUser user);

	void deleteByIds(String userId);

	void updateUser(TbUser user);

	TbUser login(TbUser user);

	TbUser login(String loginname, String password);

	TbUser querryUserById(Integer userId);
	
	List<TbUser> querryUserOne(Integer userId);

	Boolean updatePassword(String loginname, String oldPassword, Integer userId, String password);

	Boolean updatePassword(String oldPassword, TbUser user);

	List<TbUser> getAllUser();

	List<TbUser> querryByLike(String userName);

	TbUser selectweixin(String open);

	List<TbUser> querryByOperationId(Integer operationId);

	Boolean checkoutByLoginName(String loginname);

	Boolean checkoutByPhone(String phone);

}
