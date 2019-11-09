package com.guat.controll;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import com.alibaba.fastjson.JSON;
import com.guat.bean.Culture;
import com.guat.bean.Datamanager;
import com.guat.bean.Medical;
import com.guat.bean.Module;
import com.guat.bean.Province;
import com.guat.bean.Religion;
import com.guat.bean.Testtype;
import com.guat.bean.User;
import com.guat.bean.Warm;
import com.guat.bean.WebInfoManage;
import com.guat.service.ProvinceService;
import com.guat.service.UserService;
import com.guat.service.WebInfoManageService;
import com.guat.util.PageUtil;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String operator = request.getParameter("operator");
		System.out.println("operator:" + operator);
		if ("toRegister".equals(operator)) {
			toRegister(request, response);
		} else if ("register".equals(operator)) {
			register(request, response);
		} else if ("login".equals(operator)) {
			login(request, response);
		} 
		
		   else if ("toDangan".equals(operator)) {
			toDangan(request, response);
		} else if ("danganQueryUserByCondition".equals(operator)) {
			queryUserByCondition(request, response);
		} else if ("toDanganPage".equals(operator)) {
			toDanganPage(request, response);
		} else if ("toDanganEdit".equals(operator)) {
			toDanganEdit(request, response);
		} else if ("danganEdit".equals(operator)) {
			danganEdit(request, response);
		} else if ("toDanganAdd".equals(operator)) {
			toDanganAdd(request, response);
		} else if("danganAdd".equals(operator)) {
			danganAdd(request,response);
		} else if("danganDelete".equals(operator)) {
			danganDelete(request,response);
		} 
		
		else if("tosubmitMedical".equals(operator)) {
			tosubmitMedical(request,response);
		} else if("submitMedical".equals(operator)) {
			submitMedical(request,response);
		} else if("toMedicalCheck".equals(operator)) {
			toMedicalCheck(request,response);
		} else if("medicalCheck".equals(operator)) {
			medicalCheck(request,response);
		} else if("toResult".equals(operator)) {
			toResult(request,response);
		}
		
		
		
		else if ("toQueryUser".equals(operator)) {
			toQueryUser(request, response);
		} else if ("shujuguangli".equals(operator)) {
			shujuguangli(request, response);
		} else if ("QueryUser".equals(operator)) {
			QueryUser(request, response);
		} else if ("checkUsername".equals(operator)) {
			checkUsername(request, response);
		} else if ("toWebHome".equals(operator)) {
			toWebHome(request, response);
		} else if ("toWebAddHome".equals(operator)) {
			toWebAddHome(request, response);
		} else if ("deleteUsers".equals(operator)) {
			deleteUsers(request, response);
		} else if ("deleteUsersOne".equals(operator)) {
			deleteUsersOne(request, response);
		} else if ("addWebHome".equals(operator)) {
			addWebHome(request, response);
		} else if ("toManagement_edit".equals(operator)) {
			toManagement_edit(request, response);
		} else if ("webPageCurrent".equals(operator)) {
			webPageCurrent(request, response);
		} else if ("shujuplsc".equals(operator)) {
			shujuplsc(request, response);
		} else if ("webLoadPhoto".equals(operator)) {
			webLoadPhoto(request, response);

		}else if("toUserManagement_edit".equals(operator)) {
			toUserManagement_edit(request,response);
		}else if("UserManageUpdete".equals(operator)) {
			UserManageUpdete(request,response);
		}else if("webPageCurrent".equals(operator)) {
			webPageCurrent(request,response);
		}else if("shujuplsc".equals(operator)) {
			shujuplsc(request,response);

		}else if("shujuxg".equals(operator)) {
			shujuxg(request,response);
		}else if("ToUserUpdatePassWord".equals(operator)) {
			ToUserUpdatePassWord(request,response);

		}else if("toWebEditHome".equals(operator)) {
			toWebEditHome(request,response);
		}else if("webEdit".equals(operator)) {
			webEdit(request,response);
		}else if("WebDelete".equals(operator)) {
			WebDelete(request,response);
		}else if("WebDeletes".equals(operator)) {
			WebDeletes(request,response);

		}else if("shujuxg_one".equals(operator)) {
			shujuxg_one(request,response);

		}else if("UserUpdetePassword".equals(operator)) {
			UserUpdetePassword(request,response);
		}else if("toUserManagerAdd".equals(operator)) {
			toUserManagerAdd(request,response);
		}else if("UserManagerAdd".equals(operator)) {
			UserManagerAdd(request,response);


		}else if("queryWebContent".equals(operator)) {
			queryWebContent(request,response);

		}else if("toshjuguanli".equals(operator)) {
			toshjuguanli(request,response);
		}else if("toshjutongji".equals(operator)) {
			toshjutongji(request,response);
		} else if("toUserPage".equals(operator)) {
			toUserPage(request,response);
		}else if("dateExport".equals(operator)) {
			dateExport(request,response);

		}else if("toWebAbout".equals(operator)) {
			toWebAbout(request,response);
		}else if("webAboutPageCurrent".equals(operator)) {
			webAboutPageCurrent(request,response);




		}


	}
	/**
	 * 数据统计
	 * <p>Title: toshjutongji</p>  
	 * <p>Description: </p>  
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void toshjutongji(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	//	调用底层service,service调用dao
		UserService userService = UserService.getInstance();
		List<User> sulist = userService.shjutongji();
		int sum=sulist.size();//总数量
		int i=0;//男的数量
		int j=0;//女的数量
		int k=0;//小学
		int l=0;//初中
		int n=0;//高中
		int m=0;//大专
		int p=0;//大学
		for (User user : sulist) {
			if("1".equals(user.getSex())) {
				i++;
			}else {
				j++;
			}
		}
		for (User user : sulist) {
			if(user.getCulture().getId()==1) {
				k++;
			}else if(user.getCulture().getId()==2) {
				l++;
			}else if(user.getCulture().getId()==3) {
				n++;
			}else if(user.getCulture().getId()==4) {
				m++;
			}else if(user.getCulture().getId()==5){
				p++;
			}
		}
		
		System.out.println("这是sum="+sum);
		System.out.println("这是i="+i);
		System.out.println("这是j="+j);
		//把数据返回前端
		request.setAttribute("sum", sum);
		request.setAttribute("man", i);
		request.setAttribute("women", j);
		request.setAttribute("grade", k);//小学
		request.setAttribute("junior", l);//初中
		request.setAttribute("senior", n);//高中
		request.setAttribute("junior", m);//大专
		request.setAttribute("campus", p);//大学
	
		
		//request.setAttribute(name, o);
		System.out.println(sulist.toString());
		request.getRequestDispatcher("admin/shujutongji.jsp").forward(request, response);
		
	}
		
	/**
	 * 去数据管理界面
	 * <p>Title: toshjuguanli</p>  
	 * <p>Description: </p>  
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void toshjuguanli(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("admin/data_management.jsp");
		
	}

	

	/**
	 * 网站信息管理关于我们的请求方法
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
		private void toWebAbout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			// System.out.println("page_current:"+page_current);
			// 请求进入首页的同时也把数据显示出来
			// 1.先查询数据库信息
			WebInfoManageService webService = WebInfoManageService.getInstance();
			List<WebInfoManage> listWeb = webService.checkHome();

			PageUtil p = new PageUtil(listWeb, 10, null);
			request.setAttribute("page", p);
			request.setAttribute("listWeb", p.getSubList());
			request.setAttribute("pageCount", p.getPageCount());// 总页数
			request.getRequestDispatcher("admin/about_us.jsp").forward(request, response);
	}

		/**
		 * 医生：医生诊断信息
		 * @param request
		 * @param response
		 * @throws IOException 
		 * @throws ServletException 
		 */
		private void medicalCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
			String message = request.getParameter("message");
			String warm = request.getParameter("warm");
			String username = request.getParameter("username");
			System.out.println(message);
			System.out.println(warm);
			System.out.println(username);
			
			
			if(message ==null || "".equals(message)) {	
				
				request.setAttribute("error_mess", "请写诊断信息");
				request.getRequestDispatcher("admin/admin_medical-check.jsp").forward(request, response);
				
			} else if(UserService.getInstance().submitMedicalAdvice(message,warm,username)) {
				
				request.getRequestDispatcher("admin/admin_medical-check-wc.jsp").forward(request, response);
				
			} else {
				request.setAttribute("error_mess", "提交失败");
				request.getRequestDispatcher("admin/admin_medical-check.jsp").forward(request, response);
			}
	}


		/**
		 * 医生：去诊断病人页面
		 * @param request
		 * @param response
		 * @throws IOException 
		 * @throws ServletException 
		 */
		private void toMedicalCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
			String uid = request.getParameter("uid");
			
			User user = UserService.getInstance().dangan_selectUser(Integer.parseInt(uid));
			String username = user.getUsername();
			System.out.println(username);
			
			
			Medical medical = UserService.getInstance().getMedicalInfo(username);
			if(medical == null) {
			
				request.setAttribute("mess", "此人没填诊断信息的记录");
				request.getRequestDispatcher("admin/dangan.jsp").forward(request, response);
			} else {
				System.out.println("诊断信息："+medical.toString());
				StringBuffer sb = getMedicalInfo(medical);
				//有诊断信息
				if(sb.length()>0) {
					request.setAttribute("user", user);
					request.setAttribute("mess", sb.toString().substring(0, sb.toString().length()-1)+"。");
					request.getRequestDispatcher("admin/admin_medical-check.jsp").forward(request, response);
					
				} else {
					//病人没有打钩选任何病原
					request.setAttribute("user", user);
					request.setAttribute("mess", "此人健康得很，没有任何心理疾病");
					request.getRequestDispatcher("admin/admin_medical-check.jsp").forward(request, response);
				}
				
				}
			}


		private StringBuffer getMedicalInfo(Medical medical) {
			StringBuffer sb = new StringBuffer();
			//感觉过敏
			if("1".equals(medical.getHypersensitivitystatus())) {
				sb.append(medical.getHypersensitivity()+",");
			} 
			//幻觉
			if("1".equals(medical.getHallucinationstatus())) {
				sb.append(medical.getHallucination()+",");
			}
			//思维奔逸
			if("1".equals(medical.getRunning_thoughtstatus())) {
				sb.append(medical.getRunning_thought()+",");
			}
			//思维迟缓
			if("1".equals(medical.getDelayed_thinkingstatus())) {
				sb.append(medical.getDelayed_thinking()+",");
			}
			//情绪高涨
			if("1".equals(medical.getHigh_spiritsstatus())) {
				sb.append(medical.getHigh_spirits()+",");
			}
			//易激怒
			if("1".equals(medical.getIrritablestatus())) {
				sb.append(medical.getIrritable()+",");
			}
			//意志增强
			if("1".equals(medical.getEnhanced_willstatus())) {
				sb.append(medical.getEnhanced_will()+",");
			}
			//自伤
			if("1".equals(medical.getSelf_injurystatus())) {
				sb.append(medical.getSelf_injurystatus()+",");
			}
			//精神发育迟缓
			if("1".equals(medical.getMental_retardationstatus())) {
				sb.append(medical.getMental_retardation()+",");
			}
			//饮食
			if("1".equals(medical.getDietstatus())) {
				sb.append(medical.getDiet()+",");
			}
			//睡眠
			if("1".equals(medical.getSleepstatus())) {
				sb.append(medical.getSleep()+",");
			}
			//性欲减退
			if("1".equals(medical.getHyposexualitystatus())) {
				sb.append(medical.getHyposexuality()+",");
			}
			//阳痿
			if("1".equals(medical.getImpotencestatus())) {
				sb.append(medical.getImpotencestatus()+",");
			}
			//性指向
			if("1".equals(medical.getSexual_orientationstatus())) {
				sb.append(medical.getSexual_orientation()+",");
			}
			//人格障碍
			if("1".equals(medical.getPersonality_disorderstatus())) {
				sb.append(medical.getPersonality_disorder()+",");
			}
			return sb;
		}
		
		/**
		 * 用户：跳转到诊断结果页面
		 * @param request
		 * @param response
		 * @throws IOException 
		 * @throws ServletException 
		 */
		private void toResult(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			String username = user.getUsername();
			
			//查询医生的诊断记录是否写了
			if(UserService.getInstance().isExist(username)) {

				Medical medical = UserService.getInstance().getMedicalInfo(username);
				
				request.setAttribute("result", medical);
				
				request.getRequestDispatcher("user/user_test-wc-true.jsp").forward(request, response);
			} else {
				
				request.getRequestDispatcher("user/user_test-wc.jsp").forward(request, response);
			}
			
			
	}
		

		/**
		 * 用户：去提交诊断表，顺便把uid和username传过去
		 * @param request
		 * @param response
		 * @throws IOException 
		 * @throws ServletException 
		 */
		private void tosubmitMedical(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			/*
			HttpSession session = request.getSession();
			User user =  (User) session.getAttribute("user");
			session.setAttribute("uid", user.getId());
			session.setAttribute("username", user.getUsername());
			*/
			request.getRequestDispatcher("user/user_test-one.jsp").forward(request, response);
	}

		/**
		 * 用户：提交诊断表
		 * @param request
		 * @param response
		 * @throws IOException 
		 * @throws ServletException 
		 */
		private void submitMedical(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
			//临时缓存 -- 诊断项目（status）
			//String uid = request.getParameter("uid");
			String username = request.getParameter("username");
			String hypersensitivity = request.getParameter("hypersensitivity");
			String hallucination = request.getParameter("hallucination");
			String running_thought = request.getParameter("running_thought");
			String delayed_thinking = request.getParameter("delayed_thinking");
			String high_spirits = request.getParameter("high_spirits");
			String irritable = request.getParameter("irritable");
			String enhanced_will = request.getParameter("enhanced_will");
			String self_injury = request.getParameter("self_injury");
			String mental_retardation = request.getParameter("mental_retardation");
			String diet = request.getParameter("diet");
			String sleep = request.getParameter("sleep");
			String hyposexuality = request.getParameter("hyposexuality");
			String impotence = request.getParameter("impotence");
			String sexual_orientation = request.getParameter("sexual_orientation");
			String personality_disorder = request.getParameter("personality_disorder");
			
			
			//System.out.println("UID:"+uid);
			System.out.println("用户名:"+username);
			System.out.println("感觉过敏:"+hypersensitivity);
			System.out.println("幻觉:"+hallucination);
			System.out.println("思维奔逸:"+running_thought);
			System.out.println("思维迟缓:"+delayed_thinking);
			System.out.println("情绪高涨:"+high_spirits);
			System.out.println("易激怒:"+irritable);
			System.out.println("意志增强:"+enhanced_will);
			System.out.println("自伤:"+self_injury);
			System.out.println("精神发育迟缓:"+mental_retardation);
			System.out.println("饮食:"+diet);
			System.out.println("睡眠:"+sleep);
			System.out.println("性欲减退:"+hyposexuality);
			System.out.println("阳痿:"+impotence);
			System.out.println("性指向:"+sexual_orientation);
			System.out.println("人格障碍:"+personality_disorder);			
			
			Random ran = new Random();
			Testtype t = new Testtype();
			t.setId(ran.nextInt(3)+1);
			
			Medical medical = new Medical(username, "感觉过敏", "幻觉", "思维奔逸", "思维迟缓", 
					"情绪高涨", "易激怒", "意志增强", "自伤", "精神发育迟缓", "饮食", "睡眠", "性欲减退", 
					"阳痿", "性指向", "人格障碍", hypersensitivity, hallucination, running_thought, 
					delayed_thinking, high_spirits, irritable, enhanced_will, self_injury, 
					mental_retardation, diet, sleep, hyposexuality, impotence, sexual_orientation, personality_disorder,t);
			
			
			//判断有没有诊断记录
			if(UserService.getInstance().isExist(username)) {
				request.setAttribute("mess_error", "您已提交过诊断信息，请等待医生确诊");
				request.getRequestDispatcher("user/user_test-one.jsp").forward(request, response);
				
			} else {
				//用户提交诊断报告
				if(UserService.getInstance().submitTestInfo(medical)) {
					request.getRequestDispatcher("user/user_test-wc.jsp").forward(request, response);
				} else {
					
					request.setAttribute("mess", "提交失败");
					request.getRequestDispatcher("user/user_test-one.jsp").forward(request, response);
				}
			}
			
			
			
	}
		/**
		 * 网站信息管理首页查询
		 * @param request
		 * @param response
		 */
	private void queryWebContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("into queryContent..............");
		String content=request.getParameter("content");
		System.out.println("content："+content);
		WebInfoManageService webService=WebInfoManageService.getInstance();
		List<WebInfoManage> list=webService.queryContent(content);
		
		PageUtil p = new PageUtil(list, 10, null);
		request.setAttribute("page", p);
		request.setAttribute("listWeb", p.getSubList());
		request.setAttribute("pageCount", p.getPageCount());// 总页数
		request.getRequestDispatcher("admin/home.jsp").forward(request, response);
	}
	/**
	 * 网站信息管理首页      批量删除
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void WebDeletes(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String webId=request.getParameter("WebIds");
		String [] webIds=webId.split(",");
		System.out.println("webId:"+Arrays.toString(webIds));
		System.out.println("webId:"+webIds.length);
		if(webIds.length==0||"".equals(webIds[0])) {
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("<script>alert('请勾选需要删除的数据')</script>");
		}else {
			WebInfoManageService webService=WebInfoManageService.getInstance();
			webService.deleteWebs(webIds);
			toWebHome(request, response);
		}
		
		
	}
	/**
	 * 网站信息管理首页    删除
	 * @param request
	 * @param response
	 * @throws ServletException 
	 */
private void WebDelete(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		System.out.println("into WebDelete.............");
		String webId=request.getParameter("webId");
		
		WebInfoManageService webService=WebInfoManageService.getInstance();
		boolean b=webService.deleteWeb(Integer.parseInt(webId));
		if(b) {
			toWebHome(request, response);
		}
	}
/**
 * 网站信息管理首页修改
 * @param request
 * @param response
 * @throws IOException 
 */
private void webEdit(HttpServletRequest request, HttpServletResponse response) throws IOException {
	System.out.println("into webEdit。。。。。。。");
		String webId=request.getParameter("webId");
		String module=request.getParameter("module");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		
		Module mo=new Module(Integer.parseInt(module));
		WebInfoManage web=new WebInfoManage(Integer.parseInt(webId), mo, title, null, content, null);
		WebInfoManageService webService=WebInfoManageService.getInstance();
		boolean b=webService.updataHome(web);
		if(b) {
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("<script>alert('更改成功');</script>");
		}
	}

/**
 * 网站信息管理首页修改
 * @param request
 * @param response

<<<<<<< .mine
 */
	private void toWebEditHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("into toWebEditHome..........");
		String webId=request.getParameter("webId");
		request.setAttribute("webId", webId);
		request.getRequestDispatcher("admin/home_edit.jsp").forward(request, response);
	}



	/**
	 * 档案管理： 删除信息
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void danganDelete(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("档案管理，删除信息");
		
		String uid = request.getParameter("uid");
		System.out.println(uid);
		String [] uids = uid.split(",");
		
		if(UserService.getInstance().deleteUsers(uids)) {
			response.sendRedirect(request.getContextPath()+"/admin/dangan.jsp");
		} else {
			request.setAttribute("mess", "删除失败");
			request.getRequestDispatcher("/admin/dangan.jsp").forward(request, response);
		}
		
		
	}

/**
 * my数据管理：修改数据
 * <p>Title: shujuxg_one</p>  
 * <p>Description: </p>  
 * @param request
 * @param response
 */
	private void shujuxg_one(HttpServletRequest request, HttpServletResponse response) {
//		System.out.println("++++++++++my数据管理：修改数据");
		//从页面获取数据
		String id = request.getParameter("id");
		String testtype = request.getParameter("testtype");
//		String testdate = request.getParameter("testdate");
		String warmtype = request.getParameter("warmtype");
		System.out.println("id=" + id);
		System.out.println("testtype=" + testtype);
		System.out.println("warmtype=" + warmtype);
		
	//	把值写进实体类
		//编号
		Datamanager data=new Datamanager();
		data.setId(Integer.parseInt(id));

		//测试题型
		Testtype  test=new Testtype();
		test.setId(Integer.parseInt(testtype));
		//测试时间
//		data.setTestdate(rs.getDate("dda"));
		//处理状态
		Warm warm=new Warm();	
		warm.setId(Integer.parseInt(warmtype)-1);	

		
		data.setTesttype(test);
		data.setWarm(warm);		
// System.out.println("data类"+data.toString());
		if (UserService.getInstance().shujuxg_one(data)) {
			try {
//					更新成功
					//修改成功后把数据传给前端
				System.out.println("更新成功");
				response.getWriter().println("<script>window.parent.location.href='admin/data_management.jsp'</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				System.out.println("更新失败");
				request.setAttribute("mess", "更新失败");
				request.getRequestDispatcher("admin/data_management.jsp").forward(request, response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}



	private void toManagement_edit(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}


	private void webLoadPhoto(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		System.out.println("into webLoadPhoto....................");
		
		
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if (isMultipart) {
			try {
				//1.实例化缓冲区
				DiskFileItemFactory factory = new DiskFileItemFactory();
				//2.获取对文件操作的对象
				ServletFileUpload upload = new ServletFileUpload(factory);
				//设置上传数据时的默认字符集
				upload.setHeaderEncoding("UTF-8");
				//设置上传文件大小
				upload.setSizeMax(10 * 1024 * 1024);

				//获取所有表单项
				List<FileItem> fileItems = upload.parseRequest(request);
				System.out.println("有多少个表单项："+fileItems.size());
				Iterator<FileItem> iter = fileItems.iterator();

				// 依次处理每个表单域
				while (iter.hasNext()) {
					FileItem item = (FileItem) iter.next();

					if (!item.isFormField()) {
						// 如果item是上传文件
						// 获得文件名及路径
						String fileName = item.getName();

						if (fileName != null && fileName.indexOf(".") != -1) {
							//设置上传文件的新文件名，UUID
							String fileNewName = UUID.randomUUID().toString().replace("-","")//3333-3333-333
									+ "."
									+ fileName.substring(fileName.indexOf(".") + 1);//yuliuxin.jpg
							//把文件保存在服务器上本web应用目录下
							File fullFile = new File(getServletContext()  //  /uploadFile
									.getRealPath("/images/photo/"), fileNewName);
							//写文件
							item.write(fullFile);
							//修改用户的头像路径image_path
							response.getWriter().print(fileNewName);
							//response.getWriter().print(request.getContextPath()+"/images/photo/9956b56a53c54cd6885d7a10736f3b77.png");
					} else {
						}
						item.delete();
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	/**
	 * 用户管理：添加
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
    private void UserManagerAdd(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("用户管理添加");
        String id=request.getParameter("id");
    	String username=request.getParameter("username");
		String password=request.getParameter("password");
		String password_confirm=request.getParameter("password_confirm");
		String realname=request.getParameter("realname");
		String rule=request.getParameter("rule");
		String sex=request.getParameter("sex");
		System.out.println(username);
		System.out.println(password);
		System.out.println(realname);
		System.out.println(rule);
		System.out.println(sex);
		UserService userService=UserService.getInstance();
		boolean i=userService.UserManagerAdd(null,username, password,sex, Integer.parseInt(rule), realname);
        if(i) {
        	response.setContentType("text/html;charset=utf-8");
        	response.getWriter().print("<script>alert('删除成功');</script>");
        	request.getRequestDispatcher("admin/management.jsp").forward(request, response);
        }else {
        	response.setContentType("text/html;charset=utf-8");
        	response.getWriter().print("<script>alert('添加失败');</script>");
        }
		
		
		
	}
	/**
     * 用户管理：去添加
     * @param request
     * @param response
     */
    private void toUserManagerAdd(HttpServletRequest request, HttpServletResponse response) {
		// 跳转到添加页面
    	System.out.println("用户管理去添加");
    	try {
			request.getRequestDispatcher("admin/management_add.jsp").forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	/**
     * 用户管理：更新密码
     * @param request
     * @param response
     */
	private void UserUpdetePassword(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("用户管理更改密码");
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		String NewPassword=request.getParameter("NewPassword");
		String NewPassword_confirm=request.getParameter("NewPassword_confirm");
		
	
		//根据id获取数据库的密码
		User user=new User(Integer.parseInt(id), null, null, null,null, null, null,null, null, null,null, null, null,null, null,null);
		UserService userService=UserService.getInstance();
		User user1=userService.UserQueryId(user);
		System.out.println(id);
		System.out.println(password);
		System.out.println(NewPassword);
		System.out.println(NewPassword_confirm);
		System.out.println(user1.toString());
		StringBuffer sb = UserPasswordData(password, NewPassword, NewPassword_confirm, user1.getPassword());
		//将错误信息传到前端界面
		if(sb.length()>0) {
			request.setAttribute("mima", sb.toString());
			try {
				request.getRequestDispatcher("admin/management_password.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
//			通过验证，调用service方法修改密码
			UserService.getInstance().UserUpdetePassword(user.getId(),NewPassword);
//			返回结果给用户
			response.setContentType("text/html;charset=utf-8");
			try {
				response.getWriter().println("<script>alert('修改密码成功');</script>");
				//重定向
				response.sendRedirect("admin/management.jsp");
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			
		}
		
		
		
		
	}
	/**
	 * 用户管理：判断是密码是为空和比对原密码
	 * @param password
	 * @param newPassword
	 * @param comfirmPassword
	 * @param rightPassword
	 * @return
	 */
	private StringBuffer UserPasswordData(String password, String NewPassword, String NewPassword_confirm, String rightPassword) {
		StringBuffer sb = new StringBuffer("");
		if (password == null || "".equals(password.trim())) {
			sb.append("密码为空");
		}
		// 要把输入的密码比对 rightPassword：数据库的密码
		if (password != null && !password.equals(rightPassword)) {
			sb.append("原密码不正确");
		}
		if (NewPassword == null || "".equals(NewPassword.trim())) {
			sb.append("新密码为空");
		}

		if (NewPassword_confirm == null || "".equals(NewPassword_confirm.trim())) {
			sb.append("验证新密码为空");
		}
		return sb;
	}



	/**
	 * 用户管理：去修改密码
	 * @param request
	 * @param response
	 */
	private void ToUserUpdatePassWord(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("去修改用户管理的密码");
		String id=request.getParameter("id");
		String username=request.getParameter("username");
		System.out.println(id);
		System.out.println(username);
		request.setAttribute("id", id);
		request.setAttribute("username", username);
//		跳转到前端界面
		try {
			request.getRequestDispatcher("admin/management_password.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	/**
	 * my数据管理：值传到另外的页面
	 * <p>Title: shujuxg</p>  
	 * <p>Description: </p>  
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void shujuxg(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("数据管理toEdit...");
		String datid = request.getParameter("datid");
		System.out.println("datid=" + datid);
//		Datamanager datas = Datamanager.getInstance().shujuxg(Integer.parseInt(datid));
		Datamanager datas = UserService.getInstance().shujuxg(Integer.parseInt(datid));
		System.out.println("-----datas="+datas.toString());
		request.setAttribute("datas", datas);//把后台得到的数据写进datas，然后显示在前端上面

		request.getRequestDispatcher("admin/data_management_look.jsp").forward(request, response);
		
	}

	/**

	 * 数据管理：值跳转到更新页面
	 * <p>Title: shujuxg</p>  
	 * <p>Description: </p>  
	 * @param request
	 * @param response
	 */
	private void UserManageUpdete(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("用户管理编辑---UserManageUpdete");
		String id=request.getParameter("id");
		String sex=request.getParameter("sex");
		String rule=request.getParameter("rule");
		String content=request.getParameter("content");
		
		System.out.println(id);
		System.out.println(sex);
		System.out.println(rule);
		System.out.println(content);
		UserService userService=UserService.getInstance();
		userService.UserManageUpdete(Integer.parseInt(id), sex, Integer.parseInt(rule), content);
		//跳转
		try {
			response.getWriter().println("<script>window.parent.location.href='admin/management.jsp'</script>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}


	/**
	 * 档案管理：添加用户

	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void danganAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		System.out.println("档案添加用户....");
		String realname = request.getParameter("realname");
		String sex = request.getParameter("sex");
		String province = request.getParameter("province");
		String age = request.getParameter("age");
		String religion = request.getParameter("religion");
		String culture = request.getParameter("culture");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		

		System.out.println("realname:"+realname);
		System.out.println("sex:"+sex);
		System.out.println("age:"+age);
		System.out.println("religion:"+religion);
		System.out.println("culture:"+culture);
		System.out.println("address:"+address);
		System.out.println("phone:"+phone);
		
		
		StringBuffer sb = extracted(realname, age, address, phone);
		if(sb.length()>0) {
			request.setAttribute("mess", sb.toString());
			request.getRequestDispatcher("admin/dangan_add.jsp").forward(request, response);
		} else {

			User user = new User();
			Province p = new Province();
			p.setId(Integer.parseInt(province));
			
			Culture c = new Culture();
			c.setId(Integer.parseInt(culture));
			
			Religion r = new Religion();
			r.setId(Integer.parseInt(religion));
			
			Integer seq = UserService.getInstance().getAutoCreateSeq();
			String username = "auto-create-Patient"+seq;
			
			user.setUsername(username);
			user.setRealname(realname);
			user.setSex(sex);
			user.setPid(p);
			user.setAge(Integer.parseInt(age));
			user.setCulture(c);
			user.setReligion(r);
			user.setAddress(address);
			user.setPhone(phone);
			
			if(UserService.getInstance().add_DanganUser(user)) {
				System.out.println("成功");
				
				response.getWriter().println("<script>window.parent.location.href='admin/dangan.jsp'</script>");
			} else {
				request.setAttribute("mess", "添加用户失败");
				request.getRequestDispatcher("admin/dangan_add.jsp").forward(request, response);
			}
		}
		
	}
	private StringBuffer extracted(String realname, String age, String address, String phone) {
		StringBuffer sb = new StringBuffer();
		if(realname == null || "".equals(realname)) {
			sb.append("真实姓名必填");
		}
	
		
		if(age == null || "".equals(age)) {
			sb.append("年龄必填");
		}
		
		if(address == null || "".equals(address)) {
			sb.append("家庭地址必填");
		} 
		
		if(phone == null || "".equals(phone)) {
			sb.append("联系方式必填");
		}
		
		return sb;
	}

	/**

	 * 

	 * 档案管理：去到添加用户界面
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void toDanganAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("admin/dangan_add.jsp").forward(request, response);;
	}
	/**


	 * 数据管理： 批量删除

	 * <p>
	 * Title: shujuplsc
	 * </p>
	 * <p>
	 * Description:
	 * </p>
	 * 


	 * <p>Title: shujuplsc</p>  
	 * <p>Description: </p>  

	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void shujuplsc(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 获取数据集合id
		String datid[] = request.getParameterValues("selected");
		System.out.println("这是删除的datid=" + datid);
		UserService userService = UserService.getInstance();
		// 以数组作为参照实现批量删除（代用sevice层方法）
		userService.shujuplsc(datid);
		// 给客户端返回一个文本结果：删除成功
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw = null;
		try {
			pw = response.getWriter();
		} catch (Exception e) {
			e.printStackTrace();
		}
		pw.println("<script>alert('添加成功');</script>");

		// 从定向跳转
//				response.sendRedirect(request.getContextPath()+"/UserServlet?operator=shujuguangli");

		try {
			request.getRequestDispatcher("admin/data_management.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
	}


	/**
	 * 网站信息管理   首页     分页请求方法


	 * @param request
	 * 
	 * @param response
	 */
	private void webPageCurrent(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("into webPageCurrent........................");
		String page_current = request.getParameter("page_current");
		System.out.println("page_current:" + page_current);
		// 请求进入首页的同时也把数据显示出来
		// 1.先查询数据库信息
		WebInfoManageService webService = WebInfoManageService.getInstance();
		List<WebInfoManage> listWeb = webService.checkHome();

		PageUtil p = new PageUtil(listWeb, 10, Integer.parseInt(page_current));
		request.setAttribute("page", p);
		request.setAttribute("listWeb", p.getSubList());
		request.setAttribute("pageCount", p.getPageCount());// 总页数

		Object object = request.getAttribute("pageCount");// 总页数
		Integer count = (Integer) object;

		// 如果 go按钮 请求的页数大于最大页数的时候 当前页码数的赋值
		if (Integer.parseInt(page_current) > count) {
			request.setAttribute("page_current", count);// 当前请求的页面
			request.getRequestDispatcher("admin/home.jsp").forward(request, response);
		} else {
			request.setAttribute("page_current", page_current);// 当前请求的页面
			request.getRequestDispatcher("admin/home.jsp").forward(request, response);
		}

	}
	/**
	 * 网站信息管理   首页     分页请求方法


	 * @param request
	 * 
	 * @param response
	 */
	private void webAboutPageCurrent(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("into webPageCurrent........................");
		String page_current = request.getParameter("page_current");
		System.out.println("page_current:" + page_current);
		// 请求进入首页的同时也把数据显示出来
		// 1.先查询数据库信息
		WebInfoManageService webService = WebInfoManageService.getInstance();
		List<WebInfoManage> listWeb = webService.checkHome();

		PageUtil p = new PageUtil(listWeb, 10, Integer.parseInt(page_current));
		request.setAttribute("page", p);
		request.setAttribute("listWeb", p.getSubList());
		request.setAttribute("pageCount", p.getPageCount());// 总页数

		Object object = request.getAttribute("pageCount");// 总页数
		Integer count = (Integer) object;

		// 如果 go按钮 请求的页数大于最大页数的时候 当前页码数的赋值
		if (Integer.parseInt(page_current) > count) {
			request.setAttribute("page_current", count);// 当前请求的页面
			request.getRequestDispatcher("admin/about_us.jsp").forward(request, response);
		} else {
			request.setAttribute("page_current", page_current);// 当前请求的页面
			request.getRequestDispatcher("admin/about_us.jsp").forward(request, response);
		}

	}


	/**
	 * 
	 * 页面请求首页信息
	 * 
	 * @param request
	 * @param response
	 */
	private void toWebHome(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("into toWebHome........................");
		// String page_current=request.getParameter("page_current");
		// System.out.println("page_current:"+page_current);
		// 请求进入首页的同时也把数据显示出来
		// 1.先查询数据库信息
		WebInfoManageService webService = WebInfoManageService.getInstance();
		List<WebInfoManage> listWeb = webService.checkHome();

		PageUtil p = new PageUtil(listWeb, 10, null);
		request.setAttribute("page", p);
		request.setAttribute("listWeb", p.getSubList());
		request.setAttribute("pageCount", p.getPageCount());// 总页数
		request.getRequestDispatcher("admin/home.jsp").forward(request, response);

	}

	/**
	 * 
	 * 档案管理：编辑用户信息方法
	 * 
	 * @param request
	 * @param response
	 */
	private void danganEdit(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		System.out.println("档案管理Edit....");

		String uid = request.getParameter("uid");
		String realname = request.getParameter("realname");
		String sex = request.getParameter("sex");
		String age = request.getParameter("age");
		String province = request.getParameter("province");
		String culture = request.getParameter("culture");
		String religion = request.getParameter("religion");
		String phone = request.getParameter("phone");

		System.out.println("UID：" + uid);
		System.out.println("真实姓名：" + realname);
		System.out.println("性别：" + sex);
		System.out.println("年龄：" + age);
		System.out.println("省份：" + province);
		System.out.println("文化：" + culture);
		System.out.println("宗教：" + religion);
		System.out.println("手机：" + phone);

		User user = new User();
		Province p = new Province();
		p.setId(Integer.parseInt(province));

		Culture c = new Culture();
		c.setId(Integer.parseInt(culture));
		Religion r = new Religion();
		r.setId(Integer.parseInt(religion));
		user.setId(Integer.parseInt(uid));
		user.setRealname(realname);
		user.setSex(sex);
		user.setAge(Integer.parseInt(age));
		user.setPid(p);
		user.setCulture(c);
		user.setReligion(r);
		user.setPhone(phone);

		if (UserService.getInstance().updateUserDangan(user)) {
			try {
//				request.getRequestDispatcher("admin/dangan.jsp").forward(request, response);

				response.getWriter().println("<script>window.parent.location.href='admin/dangan.jsp'</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				request.setAttribute("mess", "更新失败");
				request.getRequestDispatcher("admin/dangan_edit.jsp").forward(request, response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	/**
	 * 用户管理:去编辑

	 * @param request
	 * @param response
	 */
	private void toUserManagement_edit(HttpServletRequest request, HttpServletResponse response) {
		//获取
		String id=request.getParameter("id");

		String rule=request.getParameter("rule");

		System.out.println(id);
		User user=new User(Integer.parseInt(id), null, null, null,null, null, null,null, null, null,null, null, null,null, null,null);
		UserService userService=UserService.getInstance();
		User user1=userService.UserQueryId(user);
		System.out.println(user1);
		request.setAttribute("user", user1);
		Integer rid=user1.getRule().getId();
	    System.out.println(rid);
	    System.out.println(rule);
		request.setAttribute("userrule", rid);
		request.setAttribute("rules", rule);
		
		
		try {
			//跳转
			request.getRequestDispatcher("admin/management_edit.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * 用户管理：单独删除
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void deleteUsersOne(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id = request.getParameter("id");
		System.out.println(id);
		String[] arr = new String[1];
		arr[0] = id;

		UserService userService = UserService.getInstance();
		// 以数组作为参照实现批量删除
		boolean i=userService.deleteUsers(arr);
        if(i) {
        	response.setContentType("text/html;charset=utf-8");
        	response.getWriter().print("<script>alert('删除成功');</script>");
    		
        	// 从定向跳转
    		response.sendRedirect(request.getContextPath() + "/UserServlet?operator=toQueryUser");
    		// 给客户端返回一个文本结果：删除成功

        }
		

	}

	/**
	 * 
	 * 档案管理：去编辑信息界面
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	private void toDanganEdit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("档案管理toEdit...");
		String uid = request.getParameter("uid");
		System.out.println("uid=" + uid);
		User user = UserService.getInstance().dangan_selectUser(Integer.parseInt(uid));

		request.setAttribute("user", user);

		request.getRequestDispatcher("admin/dangan_edit.jsp").forward(request, response);
	}

	/**
	 * 档案管理：分页查询
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	private void toDanganPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String page_current = request.getParameter("page_current");
		String jump = request.getParameter("jump");
		System.out.println("jump=" + jump);
		HttpSession session = request.getSession();
		List<User> list = (List<User>) session.getAttribute("userlist");
		PageUtil pg = null;
		// 如果没有取到jump值，则是通过点击第几页的
		if (jump == null || "".equals(jump)) {
			String realname = request.getParameter("realname");
			String sex = request.getParameter("sex");
			String age = request.getParameter("age");
			String province = request.getParameter("province");
			String culture = request.getParameter("culture");
			String religion = request.getParameter("religion");

			request.setAttribute("realname", realname);
			request.setAttribute("sex", sex);
			request.setAttribute("age", age);
			request.setAttribute("province", Integer.parseInt(province));
			request.setAttribute("culture", culture);
			request.setAttribute("religion", religion);

			System.out.println("真实姓名：" + realname);
			System.out.println("性别：" + sex);
			System.out.println("年龄：" + age);
			System.out.println("省份：" + province);
			System.out.println("文化：" + culture);
			System.out.println("宗教：" + religion);

			
			pg = new PageUtil(list, null, Integer.parseInt(page_current));
			
			request.setAttribute("users", pg.getSubList());
			request.setAttribute("pageCount", pg.getPageCount());
			request.setAttribute("page_current", pg.getPage_current());
			request.setAttribute("dataSize", pg.getDataSize());
			request.setAttribute("pageSize", pg.getPageSize());

			request.getRequestDispatcher("admin/dangan.jsp").forward(request, response);
			
		} else {
			// 如果取到jump值，则是通过自己输入第几页的 ajax
			pg = new PageUtil(list, null, Integer.parseInt(jump));
			
			request.setAttribute("users", pg.getSubList());
			request.setAttribute("pageCount", pg.getPageCount());
			request.setAttribute("page_current", pg.getPage_current());
			request.setAttribute("dataSize", pg.getDataSize());
			request.setAttribute("pageSize", pg.getPageSize());
			request.getRequestDispatcher("admin/dangan.jsp").forward(request, response);
			
			
			/*
			  ajax Go
			List<User> user = pg.getSubList();
			String result = JSON.toJSONString(user);
			System.out.println(result);
			response.setContentType("text/plain;charset=utf-8");
			response.getWriter().println(result);
			*/
			
			
		}
		
		
	}

	/**
	 * 
	 * 用户管理：批量删除
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void deleteUsers(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("into delete");
		String []uids = request.getParameterValues("checkbox");
		System.out.println("uids:" + uids);
		UserService userService = UserService.getInstance();
		// 以数组作为参照实现批量删除
		boolean i=userService.deleteUsers(uids);
        if(i){
			
    		// 给客户端返回一个文本结果：删除成功
    		response.setContentType("text/html;charset=utf-8");
    		PrintWriter pw = response.getWriter();
    		pw.println("<script>alert('删除成功');</script>");
    		
			 //从定向跳转 
    		
			 response.sendRedirect(request.getContextPath() +"/admin/management.jsp");
			
        	
        }
		

	}

	/**
	 * 
	 * 网站信息管理首页添加方法
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	private void addWebHome(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("into addHome..................");
		String module = request.getParameter("module");
		String title = request.getParameter("title");
		String photoPath=request.getParameter("photoPath");
		//System.out.println("photoPath:"+photoPath);
		String content = request.getParameter("content");
		Module mo=new Module(Integer.parseInt(module));
		WebInfoManage webMa = new WebInfoManage(null,mo,title, photoPath, content,null);
		WebInfoManageService webService = WebInfoManageService.getInstance();
		boolean b = webService.addHome(webMa);
		System.out.println(b);
		if (b) {
			toWebHome(request, response);
		}
	}

	/**
	 * 
	 * 网站信息管理首页请求添加方法
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void toWebAddHome(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.sendRedirect("admin/home_add.jsp");
	}

	/**
	 * 
	 * 档案管理：联合查询记录
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	private void queryUserByCondition(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String realname = request.getParameter("realname");
		String sex = request.getParameter("sex");
		String age = request.getParameter("age");
		String province = request.getParameter("province");
		String culture = request.getParameter("culture");
		String religion = request.getParameter("religion");

		request.setAttribute("realname", realname);
		request.setAttribute("sex", sex);
		request.setAttribute("age", age);
		request.setAttribute("province", Integer.parseInt(province));
		request.setAttribute("culture", culture);
		request.setAttribute("religion", religion);

		System.out.println("真实姓名：" + realname);
		System.out.println("性别：" + sex);
		System.out.println("年龄：" + age);
		System.out.println("省份：" + province);
		System.out.println("文化：" + culture);
		System.out.println("宗教：" + religion);

		User user = new User();
		Province p = new Province();
		Culture c = new Culture();
		Religion r = new Religion();
		user.setRealname(realname);
		user.setSex(sex);

		if (age == null || "".equals(age)) {
			user.setAge(null);
		} else {
			user.setAge(Integer.parseInt(age));
		}

		p.setId(Integer.parseInt(province));
		user.setPid(p);

		c.setId(Integer.parseInt(culture));
		user.setCulture(c);

		r.setId(Integer.parseInt(religion));
		user.setReligion(r);

		List<User> userlist = UserService.getInstance().queryUsers(user);
		System.out.println(userlist);
		// 把查询到的userlist记录存放到session，供topage分页查询使用

		HttpSession session = request.getSession();
		session.setAttribute("userlist", userlist);

		if (userlist == null || userlist.size() == 0) {
			request.setAttribute("mess", "没有查到数据");
			request.getRequestDispatcher("admin/dangan.jsp").forward(request, response);
		} else {
			// 分页查询
			PageUtil pg = new PageUtil(userlist, null, null);

			request.setAttribute("users", pg.getSubList());
			request.setAttribute("pageCount", pg.getPageCount());
			request.setAttribute("page_current", pg.getPage_current());
			request.setAttribute("dataSize", pg.getDataSize());
			request.setAttribute("pageSize", pg.getPageSize());

			request.getRequestDispatcher("admin/dangan.jsp").forward(request, response);
		}

	}

	/**
	 * 数据管理查询
	 * <p>
	 * Title: shujuguangli
	 * </p>
	 * <p>
	 * Description:
	 * </p>
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	private void shujuguangli(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		System.out.println("into shujuguangli...............");
		request.setCharacterEncoding("utf-8");
		// 从前端获取查询的值
		String shuju_id = request.getParameter("shuju_id");
		String shuju_name = request.getParameter("shuju_name");
		String shuju_lx = request.getParameter("shuju_lx");
		
		String page_current = request.getParameter("page_current");
		
		System.out.println("page_current:"+page_current);
		Integer shu = null;
		Integer shu_lx = null;
		if ("".equals(shuju_id)) {
			shu = null;
		} else {
			shu = Integer.parseInt(shuju_id);
		}
		if ("".equals(shuju_name)) {
			shuju_name = null;
		}
		if ("0".equals(shuju_lx)) {
			shu_lx = null;
		}
		if ("1".equals(shuju_lx)) {
			shu_lx = Integer.parseInt(shuju_lx);
		}
		if ("2".equals(shuju_lx)) {
			shu_lx = Integer.parseInt(shuju_lx);
		}
//		System.out.println("shuju_id=" + shuju_id);
//		System.out.println("shuju_name="+ shuju_name);
//			System.out.println("shuju_lx="+shuju_lx);
			
		// 把值写进实体类
		Datamanager dat = new Datamanager();
		dat.setId(shu);

		System.out.println("dat.getId()" + dat.getId());
		// 获取名字
		User user = new User();
		user.setUsername(shuju_name);
//		user.getUsername();
		dat.setUser(user);
//		//获取测试类型
		Testtype test=new Testtype();
		test.setId(shu_lx);
		dat.setTesttype(test);
		// 调用底层service，service调用dao
		UserService userService = UserService.getInstance();
		List<Datamanager> dalist = userService.shujuguangli(dat);
		
		
		//把如果要使用分页查询就把查询到的list数据放到session中
//				HttpSession session = request.getSession();
//				session.setAttribute("dalist", dalist);
			//不使用分页查询
//		request.setAttribute("dalist", dalist);
		if (dalist == null || dalist.size() == 0) {
			// 告诉用户查无数据
			request.setAttribute("message", "没有找到您要的数据");
//					System.out.println("找不到");
					request.getRequestDispatcher("admin/data_management.jsp").forward(request, response);
		} else {
				//使用 分页查询
			//把dalist集合中的数据写进实体类中
			if(page_current==null) {
				page_current="1";
				PageUtil pag = new PageUtil(dalist, 10,Integer.parseInt(page_current));
				//把集合放进dalist中
				request.setAttribute("dalist", pag.getSubList());
				
				request.setAttribute("pageCount", pag.getPageCount());
				request.setAttribute("page_current", pag.getPage_current());
				request.setAttribute("dataSize", pag.getDataSize());
				request.setAttribute("pageSize", pag.getPageSize());
				
//				System.out.println("已经找到了");
				request.getRequestDispatcher("admin/data_management.jsp").forward(request, response);
			}else {
				PageUtil pag = new PageUtil(dalist, 10,Integer.parseInt(page_current));
				//把集合放进dalist中
				request.setAttribute("dalist", pag.getSubList());
				
				request.setAttribute("pageCount", pag.getPageCount());
				request.setAttribute("page_current", pag.getPage_current());
				request.setAttribute("dataSize", pag.getDataSize());
				request.setAttribute("pageSize", pag.getPageSize());
				
//				System.out.println("已经找到了");
				request.getRequestDispatcher("admin/data_management.jsp").forward(request, response);
			}
			
		}

	}

	/**
	 * 去到档案管理界面
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	private void toDangan(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Province> provinces = ProvinceService.getInstance().getAllProvince();
		HttpSession session = request.getSession();
		session.setAttribute("provinces", provinces);
		request.getRequestDispatcher("admin/dangan.jsp").forward(request, response);
		

	}

	/**
	 * ajax验证注册用户是否已存在
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void checkUsername(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("into checkUsername...................");
		String username = request.getParameter("username");

		UserService userService = UserService.getInstance();
		boolean b = userService.usernameExist(username);
		if (b) {
			String result2 = "用户名已存在";
			String result = JSON.toJSONString(result2);
			response.setContentType("text/plain;charset=utf-8");
			response.getWriter().println(result);
		} else {
			String result2 = "由字母、数字或“_”组成，长度不少于6位，不多于30位";
			String result = JSON.toJSONString(result2);
			response.setContentType("text/plain;charset=utf-8");
			response.getWriter().println(result);
		}
	}

	/**
	 * 用户管理查询方法
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	private void QueryUser(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("用户管理查询");
		// 获取前端界面的值
		String id = request.getParameter("id");
		String username = request.getParameter("username");
		String sex = request.getParameter("sex");
		System.out.println(id);
		System.out.println(username);
		System.out.println(sex);
		// 封装数据
		// 将registerTime转换成date类型

//		User user=new User(Integer.parseInt(id), username,birthDate);
		Integer uid = null;
		if (id != null && !"".equals(id)) {
			uid = Integer.parseInt(id);
		} else {
			uid = null;
		}
		if (username == null || "".equals(username)) {
			username = null;
		}
		if (sex == null || "".equals(sex)) {
			sex = null;
		}
		System.out.println("----");
		System.out.println(uid);
		System.out.println("----");
		System.out.println(username);
		System.out.println("----");
		System.err.println(sex);
		User user = new User(uid, username, null, null, null, sex, null, null, null, null, null, null, null, null, null,
				null);
		System.out.println(user.toString());
		UserService userService = UserService.getInstance();
//		将查询到的集合对象封装到list中
		List<User> list = userService.QueryUser(user);
		System.out.println(list.toString());
		HttpSession session = request.getSession();
		session.setAttribute("userlist", list);
		request.setAttribute("list", list);
        if(list==null||list.size()==0) {
        	request.setAttribute("listNull", "没有该数据");
        }else {
		try {
			//调用分页工具，获取分页对象
			PageUtil pu=new PageUtil(list,10, null);//list集合对象,设置页的长度，要转换成int类型才能传 10:每页的条数
			//List<TabUsers> subList=list.
			request.setAttribute("list", pu.getSubList()); //一页的数
			request.setAttribute("pageCount", pu.getPageCount());// 总页数
			request.setAttribute("page_current", pu.getPage_current());//当前页码
			request.setAttribute("dataSize", pu.getDataSize());//数据总条数
			request.setAttribute("pageSize", pu.getPageSize());//每页显示的数据
			request.setAttribute("username",username );//将姓名存放到请求对象，用来回响界面的数据
			
			// 跳转
			request.getRequestDispatcher("admin/management.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        }
	}
	  /**
     * 用户管理：导出当页数据
     * @param request
     * @param response
     */
	private void dateExport(HttpServletRequest request, HttpServletResponse response) {
	System.out.println("导出当页数据");
    String pageNum=request.getParameter("pageNum");
    /*
	 * 往sheet里面放数据，
	 * 数据在哪里？在session中
	 */
    @SuppressWarnings("unchecked")
	List<User> list=(List<User>) request.getSession().getAttribute("userlist");
    if(pageNum==null)
    {
    	pageNum=1+"";
    }else {
	//先判断用户是否查询数据了
	//设置响应头
	try {
		//page_current:用户请求的页码,list：得到的集合，10:每页显示10条数据
		PageUtil util=new PageUtil(list,10,Integer.parseInt(pageNum));
		
		//设置响应头，attachment：弹出下载对话框  online：直接打开
		response.setHeader("Content-disposition","attachment; filename=" + new String("用户".getBytes("GB2312"), "8859_1") + ".xls");
		response.setHeader("pragma", "no-cache");
		response.setContentType("application/msexcel");// mime类型
		//以下代码使用java程序生成一张excel表格
		//获取输出流对象
		ServletOutputStream os = response.getOutputStream();
		// 创建一个excel表格对象
		WritableWorkbook workbook = Workbook.createWorkbook(os);
		// 在excel表格对象中创建一个sheet，索引是0，表示第一个sheet
		WritableSheet ws = workbook.createSheet("用户列表", 0);

		// 在当前工作簿中写一个单元格
		ws.addCell(new Label(2, 0, "用户信息"));// 第3列，第1行，表头
		//同学们自己写这几个单元格：用户姓名	用户性别	证件类型	证件号码	用户类型
		ws.addCell(new Label(0, 1, "ID")); 
		ws.addCell(new Label(1, 1, "用户名"));
		ws.addCell(new Label(2, 1, "密码"));
		ws.addCell(new Label(3, 1, "用户角色"));
		ws.addCell(new Label(4, 1, "性别"));
		ws.addCell(new Label(5, 1, "注册时间"));
		int rowIndex=2;//行索引从2开始
		//for循环用来输出多行数据
		for(int i=0;i<util.getSubList().size();i++)
			//getSubList().size():对应请求页面的查询的条数
		{
			User user=list.get(i);
			//这里负责输出每一行的数据，有5列
			ws.addCell(new Label(0, rowIndex, user.getId().toString()));
			ws.addCell(new Label(1, rowIndex,user.getUsername()));
			ws.addCell(new Label(2, rowIndex,user.getPassword()));
		    ws.addCell(new Label(3, rowIndex, user.getRule().getContent()));
		    ws.addCell(new Label(4, rowIndex, user.getSex().equals("1")?"男":"女"));
			ws.addCell(new Label(5, rowIndex, user.getRegisterTime().toString()));
			rowIndex++;
		}

		// 输出到终端
		workbook.write();
		workbook.close();
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
    }
	
}


	/**
	 * 用户管理：分页点击
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
		private void toUserPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取前端界面的值
			System.out.println("用户管理点击页码");
			// 获取前端界面的值
			String id = request.getParameter("id");
			String username = request.getParameter("username");
			String sex = request.getParameter("sex");
			System.out.println(id);
			System.out.println(username);
			System.out.println(sex);
			//获取分页信息
			String page_current=request.getParameter("page_current");
			//用户希望获取第2页数据，那么接下来怎么办？
			HttpSession session=request.getSession();
			//获取在查询时用的集合对象
			@SuppressWarnings("unchecked")
			List<User> user=(List<User>)session.getAttribute("userlist");
			//调用工具类获取需要的属性
			PageUtil pu=new PageUtil(user,10, Integer.parseInt(page_current));
			//user:集合对象，10显示的个数，page_current:请求的页码
			request.setAttribute("list",pu.getSubList());//用户点击选择页的结果集
			request.setAttribute("pageCount", pu.getPageCount());// 总页数
			request.setAttribute("page_current", pu.getPage_current());//当前页码
			request.setAttribute("dataSize", pu.getDataSize());//数据总条数
			//为了页面数据能够记忆，所以把数据传递下去
			request.setAttribute("pageSize", pu.getPageSize());
			request.setAttribute("id", id);
			request.setAttribute("username", username);
			request.setAttribute("sex",sex);
			// 跳转
			request.getRequestDispatcher("admin/management.jsp").forward(request, response);
			
			
			
	}

	// 跳转到用户管理界面
	private void toQueryUser(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("去用户管理");
		try {
			request.getRequestDispatcher("admin/management.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * 登录方法
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("登录。。。");
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String code = request.getParameter("code");

		System.out.println("用户名：" + username);
		System.out.println("密码：" + password);
		System.out.println("验证码：" + code);

		StringBuffer sb = validateLoginForm(username, password, code);
		if (sb.length() > 0) {
			request.setAttribute("mess", sb.toString());
			request.getRequestDispatcher("login.jsp").forward(request, response);

		} else {

			HttpSession session = request.getSession();

			String right_code = (String) session.getAttribute("code");
			System.out.println(right_code);

			if (!code.equalsIgnoreCase(right_code)) {
				request.setAttribute("mess", "验证码校验失败");
				request.getRequestDispatcher("login.jsp").forward(request, response);

			} else {
				// 数据库查找是否有这个用户
				User user = null;
				user = UserService.getInstance().login(username, password);
				// 添加用户信息给session
				session.setAttribute("user", user);
				if (user != null) {
					System.out.println(user.toString());
					if (user.getRule().getId() == 1) {
						response.sendRedirect("admin/index.jsp");
					} else if (user.getRule().getId() == 2) {
						response.sendRedirect("admin/index.jsp");
					} else if (user.getRule().getId() == 3) {
						response.sendRedirect("user/user_index.jsp");
					}
//					request.getRequestDispatcher("user/index.jsp").forward(request, response);
					// response.sendRedirect("user/index.jsp");
				} else {
					request.setAttribute("mess", "用户或密码输入错误");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}

			}

		}

	}

	private StringBuffer validateLoginForm(String username, String password, String code) {
		StringBuffer sb = new StringBuffer();

		if (username == null || "".equals(username)) {
			sb.append("请输入用户名");
		} else {

			// 用户名正则校验
			Pattern pattern = Pattern.compile("[0-9a-zA-Z\u4E00-\u9FA5]+");
			Matcher matcher = pattern.matcher(username);

			if (!matcher.matches()) {
				sb.append("用户名格式不对");
			}
		}

		if (password == null || "".equals(password)) {
			sb.append("请输入密码");
		}

		if (code == null || "".equals(code)) {
			sb.append("请输入验证码");
		}
		return sb;
	}

	private void toRegister(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		ProvinceService p = ProvinceService.getInstance();
		List<Province> listProvince = p.getAllProvince();
		request.setAttribute("list", listProvince);
		request.getRequestDispatcher("register.jsp").forward(request, response);
	}

	/**
	 * 请求注册
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	private void register(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		System.out.println("into register");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		String realname = request.getParameter("realname");
		String sex = request.getParameter("sex");
		String pro = request.getParameter("pro");
		String age = request.getParameter("age");
		String culture = request.getParameter("culture");
		String religion = request.getParameter("religion");
		System.out.println("religion：" + religion);
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String content = request.getParameter("content");
		// String address=request.getParameter("address");

		StringBuffer sb = extracted(username, password, confirmPassword, realname, sex, pro, age, culture, religion,
				address, phone);
		if (sb.length() > 0) {
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("<script>alert(" + sb.toString() + ")</script>");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		} else {
			System.out.println("pro" + pro);
			Province province = new Province(pro);
			Religion re = new Religion(Integer.parseInt(religion));
			Culture cul = new Culture(Integer.parseInt(culture));

			UserService userService = UserService.getInstance();
			User user = new User(null, username, confirmPassword, null, realname, sex, null, null, province,
					Integer.parseInt(age), cul, re, address, phone, email, content);
			userService.register(user);
			response.sendRedirect("login.jsp");

		}
	}

	private StringBuffer extracted(String username, String password, String confirmPassword, String realname,
			String sex, String pro, String age, String culture, String religion, String address, String phone) {
		StringBuffer sb = new StringBuffer();
		// 1对用户名进行校验
		if (username == null || "".equals(username.trim())) {
			sb.append("用户名为空");
		} else {
			// 2对用户名格式进行校验
			Pattern pattern = Pattern.compile("[0-9a-zA-Z\u4E00-\u9FA5]+");
			Matcher matcher = pattern.matcher(username);
			if (!matcher.matches()) {
				sb.append("用户名格式不对");
			}
		}
		// 3对密码进行校验
		if (password == null || "".equals(password.trim())) {
			sb.append("密码为空");
		}
		// 4对确认密码进行校验
		if (confirmPassword == null || "".equals(confirmPassword.trim())) {
			sb.append("确认密码为空");
		} else {
			if (!confirmPassword.equals(password)) {
				sb.append("两次密码输入不一致");
			}
		}
		// 5对真实姓名进行校验
		if (realname == null || "".equals(realname.trim())) {
			sb.append("真实姓名不能为空");
		}
		// 6对性别进行校验
		if (sex == null || "".equals(sex)) {
			sb.append("性别不能为空");
		}
		// 7对省份进行校验
		if (pro == null || "".equals(pro)) {
			sb.append("省份不能为空");
		}
		// 8对年龄进行校验
		if (age == null || "".equals(age)) {
			sb.append("年龄不能为空");
		}
		// 9对文化程度进行校验
		if (culture == null || "".equals(culture)) {
			sb.append("文化程度不能为空");
		} // 10对宗教信仰程度进行校验
		if (religion == null || "".equals(religion)) {
			sb.append("宗教信仰不能为空");
		}
		// 11对地址进行校验
		if (address == null || "".equals(address.trim())) {
			sb.append("地址不能为空");
		} // 对手机号码进行校验
		if (phone == null || "".equals(phone.trim())) {
			sb.append("手机号码不能为空");
		}
		return sb;
	}
}
