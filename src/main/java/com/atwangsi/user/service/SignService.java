package com.atwangsi.user.service;

import java.util.Date;

import com.atwangsi.user.model.TbSign;

public interface SignService {
	
	TbSign selectObj(Integer userid,String signdate);
	
	int addsign(TbSign Sign);
}
