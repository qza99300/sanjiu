package com.atwangsi.wechat.controller;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atwangsi.user.model.TbActivityApply;
import com.atwangsi.user.model.TbConsignee;
import com.atwangsi.user.model.TbExchangeRecord;
import com.atwangsi.user.model.TbIntegralProduct;
import com.atwangsi.user.model.TbSign;
import com.atwangsi.user.model.TbTopicManage;
import com.atwangsi.user.model.TbUser;
import com.atwangsi.user.service.ApplyService;
import com.atwangsi.user.service.ConsigneeService;
import com.atwangsi.user.service.OrderService;
import com.atwangsi.user.service.ProductService;
import com.atwangsi.user.service.RecordService;
import com.atwangsi.user.service.SignService;
import com.atwangsi.user.service.TopicService;
import com.atwangsi.user.service.UserService;

import net.sf.json.JSONObject;

import com.atwangsi.base.utils.CommonUtil;

@Controller
@RequestMapping(value = "users")
public class UsersController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ApplyService applyService;
	
	@Autowired
	private RecordService recordService;
	
	@Autowired
	private ProductService productService ;
	
	@Autowired
	private TopicService topicService;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private ConsigneeService consigneeService;
	
	@Autowired
	private SignService signService;
	
	/**
	 * 从session中获取用户信息
	 * 
	 * @param request
	 * @return SysUser
	 */
	public static String getUser(HttpServletRequest request) {
		return (String) request.getSession(true).getAttribute("code");
	}
	
	//跳转到首页
	@RequestMapping("homePage")
	public String homePage(String code,String codes,Model model,HttpSession session,HttpServletRequest request) {
		if(code!=null) {
			String corpid="ww7298fba441f3c528";
			String corpsecret="U3SENL-xBgZJWIRMlK5i9PhJjUx4VYZx4GTYqDCpQC8";
			String requestUrl = "https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=ID&corpsecret=SECRECT";
	        requestUrl = requestUrl.replace("ID", corpid).replace("SECRECT", corpsecret);
	        // 通过网页授权获取用户信息
	        JSONObject jsonObject = CommonUtil.httpsRequest(requestUrl, "GET", null);
	        
	        String requestUrls = "https://qyapi.weixin.qq.com/cgi-bin/user/getuserinfo?access_token=ACCESS_TOKEN&code=CODE";
	        requestUrls = requestUrls.replace("ACCESS_TOKEN", jsonObject.getString("access_token")).replace("CODE", code);
	        // 通过网页授权获取用户信息
	        JSONObject jsonObjects = CommonUtil.httpsRequest(requestUrls, "GET", null);
	        
	        model.addAttribute("code", jsonObjects.getString("UserId"));
	        return "WeChat/index";
		}
		model.addAttribute("code",codes);
		return "WeChat/index";
	}
	
	//个人信息
	@RequestMapping("personal")
	public String personal(String code,Model model,HttpServletRequest request) {
		TbUser users=userService.selectweixin(code);//根据微信ID查询用户表
		TbUser user = this.userService.querryUserById(users.getUserId());
		model.addAttribute("list",user);
		model.addAttribute("code", code);
		return "WeChat/work";
	}
	
	//跳转修改个人信息
	@RequestMapping("updatepersonal")
	public String updatepersonal(String code,Model model) {
		TbUser users=userService.selectweixin(code);//根据微信ID查询用户表
		TbUser user = this.userService.querryUserById(users.getUserId());
		model.addAttribute("list",user);
		model.addAttribute("code", code);
		return "WeChat/personal";
	}
	
	//修改个人信息
	@ResponseBody
	@RequestMapping("updates")
	public String update(TbUser user,String pca,HttpSession session){
		
		    String[] array=pca.split(" ");
	
			user.setProvince(array[0].toString());
			user.setCity(array[1].toString());
			user.setArea2(array[2].toString());
		
		try {
			this.userService.updateUser(user);
			return "yes";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "no";// 转换为json格式
				
	}
	
	//查询个人报名活动
	@RequestMapping("selectapply")
	public String selectapply(String code,Model model,HttpServletRequest request) {
		TbUser users=userService.selectweixin(code);//根据微信ID查询用户表
		List<TbActivityApply> apply=applyService.selectApply(users.getUserId());
		model.addAttribute("list", apply);
		model.addAttribute("code", code);
		return "WeChat/Record";
	}
	
	//查询兑换记录
	@RequestMapping("exchange")
	public String exchange(String code,Model model,HttpServletRequest request) {
		TbUser users=userService.selectweixin(code);//根据微信ID查询用户表
		List<TbExchangeRecord> record=recordService.selectexchange(users.getUserId());
		model.addAttribute("list", record);
		model.addAttribute("code", code);
		return "WeChat/integral";
	}
	
	//查询单个兑换记录
	@RequestMapping("single")
	public String single(String code,Model model,String id) {
		TbExchangeRecord record=recordService.selectsingle(Integer.parseInt(id));
		System.out.println(record);
		TbConsignee Consignee=consigneeService.selectByPrimaryKey(record.getConsigneeId());
		model.addAttribute("list", record);
		model.addAttribute("Consignee", Consignee);
		model.addAttribute("code", code);
		return "WeChat/details";
	}
	
	//物品列表
	@RequestMapping("Goods")
	public String Goods(String code,Model model,String cont) {
		
		List<TbIntegralProduct> product=productService.queryAll();
		model.addAttribute("list", product);
		model.addAttribute("cont", cont);
		model.addAttribute("code", code);
		return "WeChat/exchange";
	}
	
	//填写收货地址
	@RequestMapping("address")
	public String address(String code,String ProductId,Model model,String consigneeId) {
		if(consigneeId!=null) {
			model.addAttribute("consignee", consigneeService.selectByPrimaryKey(Integer.parseInt(consigneeId)));
		}
		model.addAttribute("product", productService.selectByPrimaryKey(Integer.parseInt(ProductId)));
		//orderService.saveOrder(order);
		model.addAttribute("code", code);
		return "WeChat/address";
	}
	
	//查询所有收货地址
	@RequestMapping("Receiving")
	public String Receiving(String code,Model model,String productId,HttpServletRequest request) {
		TbUser users=userService.selectweixin(code);//根据微信ID查询用户表
		List<TbConsignee> consignees =consigneeService.querryOneConsignee(users.getUserId());
		model.addAttribute("list", consignees);
		model.addAttribute("productId", productId);
		model.addAttribute("code", code);
		return "WeChat/ReceivingAddress";
	}
	
	//新增订单
	@RequestMapping("add")
	public String add(Model model,TbConsignee consignee,String code,TbExchangeRecord order,String productId,HttpServletRequest request) {
			TbUser users=userService.selectweixin(code);//根据微信ID查询用户表
			order.setUserId(users.getUserId());
			order.setUserName(users.getUserName());
			consignee.setUserId(users.getUserId());
			if(order.getConsigneeId()!=null) {
				Boolean bool = this.recordService.addRecord(order);//新增订单
				
				TbUser uu=userService.querryUserById(users.getUserId());
				
				//获得当前物品数量。成功后减1
				System.out.println(productId);
				TbIntegralProduct  Product=productService.selectByPrimaryKey(Integer.parseInt(productId));
				Product.setProductCount(Product.getProductCount()-1);
				
				TbUser user=new TbUser();
				user.setUserId(1);
				user.setIntegralCount(uu.getIntegralCount()-Product.getProductIntegral());//减去积分
				if (bool) {
					productService.updateOrder(Product);
					userService.updateUser(user);
					model.addAttribute("code", code);
					return "redirect:personal";
				}
			}else {
				consignee.setCreateDate(new Date());
				Boolean bool = this.consigneeService.saveConsignee(consignee);
				
				
				List<TbConsignee> consignees =consigneeService.querryOneConsignee(users.getUserId());
				
				order.setConsigneeId(consignees.get(consignees.size()-1).getConsigneeId());
				Boolean boole = this.recordService.addRecord(order);//新增订单
				
				TbUser uu=userService.querryUserById(users.getUserId());
				
				//获得当前物品数量。成功后减1
				System.out.println(productId);
				TbIntegralProduct  Product=productService.selectByPrimaryKey(Integer.parseInt(productId));
				Product.setProductCount(Product.getProductCount()-1);
				
				TbUser user=new TbUser();
				user.setUserId(1);
				user.setIntegralCount(uu.getIntegralCount()-Product.getProductIntegral());//减去积分
				if (boole) {
					productService.updateOrder(Product);
					userService.updateUser(user);
					model.addAttribute("code", code);
					return "redirect:personal";
				}
			}
			
			
		
		

		return "redirect:address";
	}
	
	//显示全部社区信息
	@RequestMapping("Community")
	public String Community(String code,Model model) {
		model.addAttribute("list", topicService.selectTbTopicObj());
		model.addAttribute("code", code);
		return "WeChat/Community";
	}
	
	//显示最热话题
	@RequestMapping("hottest")
	public String hottest(String code,Model model) {
		model.addAttribute("list", topicService.selectTbTopicHottest());
		model.addAttribute("code", code);
		return "WeChat/hottest";
	}
	
	//跳转发布社区信息
	@RequestMapping("Release")
	public String Release(String code,Model model) {
		model.addAttribute("code", code);
		return "WeChat/edit";
	}
	
	//新增社区信息
	@RequestMapping("addCommunity")
	public String addCommunity(String code,Model model,TbTopicManage topic,HttpServletRequest request) {
		TbUser user=userService.selectweixin(code);//根据微信ID查询用户表
		topic.setCreateDate(new Date());
		topic.setUserId(user.getUserId());
		topic.setUserName(user.getUserName());
		topic.setLikeCount(0);
		Boolean bool = this.topicService.addTopic(topic);
		model.addAttribute("code", code);
		if (bool) {
			return "redirect:Community";
		}
		return "redirect:Release";
	}
	
	//点赞
	@ResponseBody
	@RequestMapping("Fabulous")
	public String Fabulous(String topicId) {
		int num=topicService.updateLikeCount(Integer.parseInt(topicId));
		if(num>0) {
			return "yes";
		}
		return "no";
	}
	
	//签到
	@ResponseBody
	@RequestMapping("Sign")
	public String Sign(String code) {
		TbUser user=userService.selectweixin(code);//根据微信ID查询用户表
		Timestamp ts = new Timestamp(System.currentTimeMillis());  
        String tsStr = "";  
        DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");  
        tsStr = sdf.format(ts);  
		if(signService.selectObj(user.getUserId(),tsStr)==null) {
			TbSign ss=new TbSign();
			ss.setUserid(user.getUserId());
			signService.addsign(ss);
			return "yes";
		}
		return "no";
	}
}
