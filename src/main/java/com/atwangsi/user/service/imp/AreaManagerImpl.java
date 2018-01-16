package com.atwangsi.user.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.user.dao.TbAreaManagerMapper;
import com.atwangsi.user.model.TbAreaManager;
import com.atwangsi.user.model.TbAreaManagerExample;
import com.atwangsi.user.service.AreaManagerService;

@Service
public class AreaManagerImpl implements AreaManagerService {
	
	@Autowired
	private TbAreaManagerMapper areaManagerMapper;

	//判断该省份是否已存在
	@Override
	public Boolean checkByProvince(String province) {
		// TODO Auto-generated method stub
		TbAreaManagerExample example = new TbAreaManagerExample();
		example.createCriteria().andProvinceEqualTo(province);
		return this.areaManagerMapper.selectByExample(example).size() > 0;
	}

	//添加
	@Override
	public Boolean add(TbAreaManager areaManager) {
		// TODO Auto-generated method stub
		return this.areaManagerMapper.insertSelective(areaManager) > 0;
	}

	//删除
	@Override
	public Boolean delete(Integer areaId) {
		// TODO Auto-generated method stub
		return this.areaManagerMapper.deleteByPrimaryKey(areaId) > 0;
	}

	//修改
	@Override
	public Boolean update(TbAreaManager areaManager) {
		// TODO Auto-generated method stub
		return this.areaManagerMapper.updateByPrimaryKeySelective(areaManager) > 0;
	}

	//查询所有信息
	@Override
	public List<TbAreaManager> querryAllArea() {
		// TODO Auto-generated method stub
		return this.areaManagerMapper.selectByExample(null);
	}

	@Override
	public TbAreaManager querryById(Integer areaId) {
		// TODO Auto-generated method stub
		return this.areaManagerMapper.selectByPrimaryKey(areaId);
	}

	@Override
	public List<TbAreaManager> querryByLike(String managerName) {
		// TODO Auto-generated method stub
		TbAreaManagerExample example = new TbAreaManagerExample();
		example.createCriteria().andManagerNameLike("%"+ managerName +"%");
		return this.areaManagerMapper.selectByExample(example);
	}

}
