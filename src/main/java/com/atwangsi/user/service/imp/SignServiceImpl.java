package com.atwangsi.user.service.imp;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.user.dao.TbSignMapper;
import com.atwangsi.user.model.TbSign;
import com.atwangsi.user.service.SignService;

@Service
public class SignServiceImpl implements SignService{
	
	@Autowired
	private TbSignMapper  SignMapper;

	@Override
	public TbSign selectObj(Integer userid,String signdate) {
		// TODO Auto-generated method stub
		return SignMapper.selectObj(userid,signdate);
	}

	@Override
	public int addsign(TbSign Sign) {
		// TODO Auto-generated method stub
		return SignMapper.addsign(Sign);
	}

}
