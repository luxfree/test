package kr.lns.cn;

import java.util.ArrayList;
import java.util.List;

import kr.lns.beans.AddrBean;

public class AddrManager {
	List<AddrBean> addrlist = new ArrayList<AddrBean>();
	
	public void add(AddrBean ab) {
		addrlist.add(ab);
	}
	
	public List<AddrBean> getAddrList() {
		return addrlist;
	}
}
