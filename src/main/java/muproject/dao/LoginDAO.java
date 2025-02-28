package muproject.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import muproject.vo.Login;



@Repository
public class LoginDAO {
	
	@Autowired
	SqlSession session;
	
	public int countlogin(Login login) {
	    return session.selectOne("countlogin", login);
	}
	
	public int insertlogin(Login login) {
		return session.insert("insertlogin", login);
		//test
	}
	
	public Login usersById(int id) {
		return session.selectOne("usersById", id);
	}

}
