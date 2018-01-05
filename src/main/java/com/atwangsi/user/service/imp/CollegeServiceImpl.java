package com.atwangsi.user.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.user.dao.TbCollegeSynopsisMapper;
import com.atwangsi.user.model.TbCollegeSynopsis;
import com.atwangsi.user.model.TbCollegeSynopsisExample;
import com.atwangsi.user.model.TbCollegeSynopsisExample.Criteria;
import com.atwangsi.user.service.CollegeService;

@Service
public class CollegeServiceImpl implements CollegeService {
	
	@Autowired
	private TbCollegeSynopsisMapper collegeSynopsisMapper;

	@Override
	public Boolean saveCollegeIntro(TbCollegeSynopsis college) {

		return this.collegeSynopsisMapper.insertSelective(college) > 0;
	
	}

	@Override
	public List<TbCollegeSynopsis> getCollegeSynopsis() {
		
		return this.collegeSynopsisMapper.selectByExample(null);
		
	}

	@Override
	public Boolean deleteIntroById(String collegeIds) {
		
		List<Integer> list = new ArrayList<>();
		
		String[] split = collegeIds.split(",");
		
		for (String string : split) {
			try {
				Integer collegeId = Integer.parseInt(string);
				
				list.add(collegeId);
			} catch (NumberFormatException e) {
				
				e.printStackTrace();
			}
		}
		
		TbCollegeSynopsisExample example = new TbCollegeSynopsisExample();
		
		Criteria criteria = example.createCriteria();
		
		criteria.andCollegeIdIn(list);
		
		int key = this.collegeSynopsisMapper.deleteByExample(example);
		
		return key > 0;
	
	}

	@Override
	public TbCollegeSynopsis queryIntroByid(Integer collegeId) {
		
		return this.collegeSynopsisMapper.selectByPrimaryKey(collegeId);
	}
	
		

}


