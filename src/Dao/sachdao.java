package Dao;

import java.util.ArrayList;

import Bean.sachbean;

public class sachdao {
	public ArrayList<sachbean> getsach(){
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		ds.add(new sachbean("SACH001","HTML/CSS", "Faker", (long)50000, "image_sach/b1.jpg"));
		ds.add(new sachbean("SACH002","Javascript", "Bang", (long)50000, "image_sach/b2.jpg"));
		ds.add(new sachbean("SACH003","Reactjs", "Khan", (long)50000, "image_sach/b3.jpg"));
		ds.add(new sachbean("SACH004","PHP", "Wolf", (long)50000, "image_sach/b4.jpg"));
		ds.add(new sachbean("SACH005","Nodejs", "Bengi", (long)50000, "image_sach/b5.jpg"));
		return ds;
	}
}
