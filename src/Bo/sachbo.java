package Bo;

import java.util.ArrayList;

import Bean.sachbean;
import Dao.sachdao;

public class sachbo {
	sachdao s= new sachdao();
	public ArrayList<sachbean> getsach(){
		return s.getsach();
	}
}
