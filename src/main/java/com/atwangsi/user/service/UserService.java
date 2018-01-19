package com.atwangsi.user.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.atwangsi.base.model.ResultVO;
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

	ResultVO<Object> importMsg(MultipartFile file);

	List<TbUser> querryByLikeByIdName(String idName);

	List<TbUser> querryByLikeByProvince(String province);

}
