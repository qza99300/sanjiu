package com.atwangsi.user.service;

import java.util.List;

import com.atwangsi.user.model.TbAreaManager;

public interface AreaManagerService {

	Boolean checkByProvince(String province);

	Boolean add(TbAreaManager areaManager);

	Boolean delete(Integer areaId);

	Boolean update(TbAreaManager areaManager);

	List<TbAreaManager> querryAllArea();

	TbAreaManager querryById(Integer areaId);

	List<TbAreaManager> querryByLike(String managerName);

}
