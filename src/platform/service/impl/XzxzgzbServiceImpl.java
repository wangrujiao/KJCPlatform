package platform.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import platform.dao.XzxzgzbDao;
import platform.domain.Xzxzgzb;
import platform.form.XzxzgzbForm;
import platform.service.XzxzgzbService;

@Service(XzxzgzbService.SERVICE_NAME)
public class XzxzgzbServiceImpl implements XzxzgzbService{
	
	@Resource(name=XzxzgzbDao.SERVICE_NAME)
	private XzxzgzbDao xzxzgzbDao;
	
	public List<XzxzgzbForm> findXzxzgzbList(){
		String hqlWhere = "";
		Object [] params = null;
		LinkedHashMap<String, String> orderby = new LinkedHashMap<String, String>();
		orderby.put(" o.fwrq", "desc");
		List<Xzxzgzb> list=xzxzgzbDao.findCollectionByConditionNoPage(hqlWhere, params, orderby);
		List<XzxzgzbForm> formlist=this.XzxzgzbPOListToVOList(list);
		return formlist;
		
	}
	public List<XzxzgzbForm> findXzxzgzbListWithPage(int pagesize,int pageno,XzxzgzbForm xzxzgzbForm){
		String hqlWhere = "";
		Object [] params = null;
		List<String> paramsList=new ArrayList<String>();
		LinkedHashMap<String, String> orderby = new LinkedHashMap<String, String>();
		if(xzxzgzbForm!=null&&StringUtils.isNotBlank(xzxzgzbForm.getWjm())){
			hqlWhere += " and o.wjm like ?";
			paramsList.add("%"+xzxzgzbForm.getWjm()+"%");
		}
		if(xzxzgzbForm!=null&&StringUtils.isNotBlank(xzxzgzbForm.getWjh())){
			hqlWhere += " and o.wjh like ?";
			paramsList.add("%"+xzxzgzbForm.getWjh()+"%");
		}
		orderby.put(" o.fwrq", "desc");
		params = paramsList.toArray();
		List<Xzxzgzb> list=xzxzgzbDao.findCollectionByConditionWithPage(hqlWhere, params, orderby,pagesize,pageno);
		List<XzxzgzbForm> formlist=this.XzxzgzbPOListToVOList(list);
		return formlist;
		
	}
	
	private List<XzxzgzbForm> XzxzgzbPOListToVOList(List<Xzxzgzb> list) {
		// TODO Auto-generated method stub
		List<XzxzgzbForm> formlist=new ArrayList<XzxzgzbForm>();
		for(int i=0;i<list.size();i++){
			Xzxzgzb xzxzgzb=list.get(i);
			XzxzgzbForm xzxzgzbForm=new XzxzgzbForm();
			xzxzgzbForm.setCljg(xzxzgzb.getCljg());
			xzxzgzbForm.setFwjg(xzxzgzb.getFwjg());
			xzxzgzbForm.setFwrq(String.valueOf(xzxzgzb.getFwrq()));
			xzxzgzbForm.setId(String.valueOf(xzxzgzb.getId()));
			xzxzgzbForm.setJbnr(xzxzgzb.getJbnr());
			xzxzgzbForm.setJbr(xzxzgzb.getJbr());
			xzxzgzbForm.setJzrq(String.valueOf(xzxzgzb.getJzrq()));
			xzxzgzbForm.setWjh(xzxzgzb.getWjh());
			xzxzgzbForm.setWjm(xzxzgzb.getWjm());
			formlist.add(xzxzgzbForm);
		}
		return formlist;
	}

	
}
