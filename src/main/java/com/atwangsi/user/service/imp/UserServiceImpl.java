package com.atwangsi.user.service.imp;

import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.atwangsi.base.model.ResultVO;
import com.atwangsi.user.dao.TbUserMapper;
import com.atwangsi.user.model.TbUser;
import com.atwangsi.user.model.TbUserExample;
import com.atwangsi.user.model.TbUserExample.Criteria;
import com.atwangsi.user.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private TbUserMapper userMapper;

	// 新增用户，新增前做校验
	@Override
	public Boolean saveUser(TbUser user) {
		// 联系方式唯一
		// 用户的联系方式
		// String userOhone = user.getPhone();
		// TbUserExample example = new TbUserExample();
		// example.createCriteria().andPhoneEqualTo(userOhone);
		//
		// List<TbUser> list = this.userMapper.selectByExample(example);
		// //联系方式已存在
		// if (list.size()>0) {
		// return false;
		// }

		int i = this.userMapper.insertSelective(user);

		return i > 0;
	}

	// 删除用户
	@Override
	public void deleteByIds(String userId) {
		// 存储需要删除的id
		ArrayList<Integer> ids = new ArrayList<>();

		try {
			// 根据“,”截取所有id
			String[] id = userId.split(",");

			for (String string : id) {
				int i;

				i = Integer.parseInt(string);

				ids.add(i);
			}

			// 创建该example对象
			TbUserExample example = new TbUserExample();

			Criteria criteria = example.createCriteria();
			// 把需要删除的id集合存入criteria中
			criteria.andUserIdIn(ids);

			// 执行批量删除操作
			this.userMapper.deleteByExample(example);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}

	}

	// 修改
	@Override
	public void updateUser(TbUser user) {

		// 检查用户名是否唯一
		// boolean bool = checkLoginName(user.getLoginname());

		this.userMapper.updateByPrimaryKeySelective(user);

	}

	// 登录
	public TbUser login(TbUser user) {

		TbUserExample example = new TbUserExample();

		Criteria criteria = example.createCriteria();

		criteria.andLoginnameEqualTo(user.getLoginname());
		criteria.andPasswordEqualTo(user.getPassword());

		List<TbUser> list = this.userMapper.selectByExample(example);

		if (list.size() == 1) {
			return list.get(0);
		}

		return null;

	}

	//
	@Override
	public TbUser login(String loginname, String password) {
		// TODO Auto-generated method stub
		TbUserExample example = new TbUserExample();

		Criteria criteria = example.createCriteria();

		criteria.andLoginnameEqualTo(loginname);
		criteria.andPasswordEqualTo(password);

		List<TbUser> list = this.userMapper.selectByExample(example);

		if (list.size() == 1) {

			return list.get(0);
		}

		return null;
	}

	// 根据用户id查询
	@Override
	public TbUser querryUserById(Integer userId) {
		// TODO Auto-generated method stub
		TbUser user = this.userMapper.selectByPrimaryKey(userId);
		return user;
	}

	/**
	 * 检查用户的唯一性
	 * 
	 * @param loginacct
	 * @return
	 */
	public boolean checkLoginName(String loginName) {
		// 查询数据库账户是否存在
		TbUserExample example = new TbUserExample();
		Criteria criteria = example.createCriteria();
		criteria.andLoginnameEqualTo(loginName);
		long l = userMapper.countByExample(example);
		return l == 0;
	}

	// 修改密码
	@Override
	public Boolean updatePassword(String loginname, String oldPassword, Integer userId, String password) {
		// TODO Auto-generated method stub
		TbUser tbUser = new TbUser();
		tbUser.setPassword(password);
		tbUser.setUserId(userId);
		try {
			// 查出来的用户信息
			TbUser user = this.userMapper.selectByPrimaryKey(userId);
			// 对比用户密码和账号信息
			if (user.getLoginname().equals(loginname) && user.getPassword().equals(oldPassword)) {
				this.userMapper.updateByPrimaryKeySelective(tbUser);
				return true;
			}
			return false;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	// 修改密码
	@Override
	public Boolean updatePassword(String oldPassword, TbUser user) {
		// TODO Auto-generated method stub
		Integer id = user.getUserId();

		TbUser selectUser = this.userMapper.selectByPrimaryKey(id);

		if (selectUser.getLoginname().equals(user.getLoginname()) && selectUser.getPassword().equals(oldPassword)) {
			this.userMapper.updateByPrimaryKeySelective(user);
			return true;
		}

		return false;
	}

	// 查询所有业务信息
	@Override
	public List<TbUser> getAllUser() {
		// TODO Auto-generated method stub
		return this.userMapper.selectByExample(null);
	}

	@Override
	public List<TbUser> querryUserOne(Integer userId) {
		// TODO Auto-generated method stub
		List<TbUser> list = new ArrayList<>();
		list.add(querryUserById(userId));
		return list;
	}

	@Override
	public List<TbUser> querryByLike(String userName) {
		// TODO Auto-generated method stub
		TbUserExample example = new TbUserExample();
		example.createCriteria().andUserNameLike("%" + userName + "%");
		return this.userMapper.selectByExample(example);
	}

	// 根据微信查询对象
	@Override
	public TbUser selectweixin(String open) {

		return userMapper.selectweixin(open);
	}

	// 根据operationId查询用户信息
	// 1为业务员，2为客户
	@Override
	public List<TbUser> querryByOperationId(Integer operationId) {
		// TODO Auto-generated method stub
		TbUserExample example = new TbUserExample();
		example.createCriteria().andOperationIdEqualTo(operationId);
		return this.userMapper.selectByExample(example);
	}

	// 判断登录账号是否存在
	@Override
	public Boolean checkoutByLoginName(String loginname) {
		// TODO Auto-generated method stub
		TbUserExample example = new TbUserExample();
		example.createCriteria().andLoginnameEqualTo(loginname);

		return this.userMapper.selectByExample(example).size() > 0;
	}

	// 检测手机是否存在
	@Override
	public Boolean checkoutByPhone(String phone) {
		// TODO Auto-generated method stub
		TbUserExample example = new TbUserExample();
		example.createCriteria().andPhoneEqualTo(phone);
		return this.userMapper.selectByExample(example).size() > 0;
	}

	// 添加每一行的数据
	private static TbUser buildStudent(Row row) {
		TbUser user = new TbUser();
		user.setUserName(getStringCellValue(row.getCell(0)));
		user.setIdName(getStringCellValue(row.getCell(1)));
		user.setIdCard(getStringCellValue(row.getCell(2)));
		user.setPhone(getStringCellValue(row.getCell(3)));
		user.setOpenId(getStringCellValue(row.getCell(4)));
		user.setWechatName(getStringCellValue(row.getCell(5)));

		return user;
	}

	/**
	 * 根据不同的类型获取Excel单元格中的数据
	 * 
	 * @param cell
	 *            Excel单元格
	 * @return String 单元格数据内容
	 */
	private static String getStringCellValue(Cell cell) {
		String strCell = "";
		if (null != cell) {
			switch (cell.getCellType()) {
			case HSSFCell.CELL_TYPE_STRING:
				strCell = cell.getStringCellValue();
				break;
			case HSSFCell.CELL_TYPE_NUMERIC:
				// true：日期类型；false：数字类型
				if (DateUtil.isCellDateFormatted(cell)) {
					Date date = cell.getDateCellValue();
					SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
					strCell = dateFormat.format(date);
				} else {
					Double doubleValue = cell.getNumericCellValue();
					strCell = String.valueOf(doubleValue.longValue());
				}
				break;
			case HSSFCell.CELL_TYPE_BOOLEAN:
				strCell = String.valueOf(cell.getBooleanCellValue());
				break;
			default:
				break;
			}
		}
		return strCell;
	}

	// 文件导入操作
	@Override
	public ResultVO<Object> importMsg(MultipartFile file) {
		// TODO Auto-generated method stub
		List<TbUser> list = new ArrayList<>();

		Workbook workbook = null;

		// Partner Excel 数据文件流
		InputStream inputStream = null;

		try {
			inputStream = file.getInputStream();
			workbook = WorkbookFactory.create(inputStream);
		} catch (Exception e) {
			return ResultVO.fail("导入失败,请联系技术！", null, null);
		}

		// 第一个工作簿
		Sheet sheet = workbook.getSheetAt(0);

		// 总行数
		int num = sheet.getLastRowNum();

		Row row = null;

		// 正文内容应该从第二行开始,第一行为表头的标题
		for (int i = 1; i <= num; i++) {
			row = sheet.getRow(i);
			if (row != null) {
				list.add(buildStudent(row));
			}
		}
		// 遍历插入用户信息
		for (TbUser user : list) {
			user.setCreateDate(new Date());
			this.userMapper.insertSelective(user);
		}
		return ResultVO.success("数据导入成功", null, null);

	}
}