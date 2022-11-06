package Dao.member;

import java.util.List;

import Model.member;

public interface memberDao {

	//create新增
	void add(member m);
	
	//read查詢
	List<member> queryAll();
	member queryMember(String username,String password);
	boolean queryUsername(String username);
	member queryMember(int id);
	
	//update修改
	void update(member m);
	
	//delete刪除
	void delete(int id);
	
}
