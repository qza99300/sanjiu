package com.atwangsi.user.service;

import java.util.List;

import com.atwangsi.user.model.TbCollegeSynopsis;

public interface CollegeService {

	Boolean saveCollegeIntro(TbCollegeSynopsis college);

	List<TbCollegeSynopsis> getCollegeSynopsis();

	Boolean deleteIntroById(String collegeIds);

	TbCollegeSynopsis queryIntroByid(Integer collegeId);


}
