package Bo;

import java.util.ArrayList;

import Bean.GioHangBean;

public class GiohangBo {
	public ArrayList<GioHangBean> ds = new ArrayList<GioHangBean>();
//	public void Them(String masach, String tensach, String tacgia, long gia, long soluong) {
//		GioHangBean gh = new GioHangBean(masach, tensach, tacgia, gia, soluong);
//		ds.add(gh);
//	}
	public long Tong() {
		long s=0;
		for(GioHangBean gh:ds)
			s+=gh.getThanhtien();
		return s;
	}
	public void Xoa(String masach) {
		for(GioHangBean gh: ds) {
			if(gh.getMasach().equals(masach)==true) {
				ds.remove(gh);
			}
		}
	}
	public void Sua( String masach, long soluong) {
		for(GioHangBean gh1: ds) {
			if(gh1.getMasach().equals(masach)==true)
				gh1.setSoluong(gh1.getSoluong()+ soluong);
				gh1.setThanhtien(gh1.getSoluong(), gh1.getGia());
		}
		
	}
	
	public int TimSach(String ma) {
		for(GioHangBean gh: ds) {
			if(gh.getMasach().equals(ma)==true)
				return 0;
		}
		return 1;
	}
	
		
	public void Them(String masach, String tensach, String tacgia, long gia, long soluong) {
		GioHangBean gh= new GioHangBean(masach, tensach, tacgia, gia, soluong);
		if(TimSach(gh.getMasach())==1) {
			ds.add(gh);
		}
		else {
			for(GioHangBean gh1: ds) {
				if(gh1.getMasach().equals(masach)==true)
					gh1.setSoluong(gh.getSoluong()+gh1.getSoluong());
					gh1.setThanhtien(gh1.getSoluong(), gh1.getGia());
			}
		}
			
	}
}
