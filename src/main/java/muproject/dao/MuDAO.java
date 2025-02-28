package muproject.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import muproject.vo.Board;
import muproject.vo.Comments;
import muproject.vo.EveryTeam;
import muproject.vo.MyTeam;
import muproject.vo.Players;
import muproject.vo.Users;

@Repository
public class MuDAO {

	@Autowired
	SqlSession session;

	public Users getUserById(String id) throws Exception {
		return session.selectOne("getUserById", id);
	}
	public EveryTeam getEveryTeamById(int id) throws Exception {
		return session.selectOne("getEveryTeamById", id);
	}

	public List<Players> getListPlayers() throws Exception {
		return session.selectList("getListPlayers");
	}

	public Players getListPlayersDetail(int item) throws Exception {
		return session.selectOne("getListPlayersDetail", item);
	}

	public Players getPlayersById(int item) throws Exception {
		return session.selectOne("getPlayersById", item);
	}

	public Players getPlayerPhotoById(int selectedPlayer) throws Exception {
		return session.selectOne("getPlayerPhotoById", selectedPlayer);
	}

	public MyTeam getListMyTeam() throws Exception {
		return session.selectOne("getListMyTeam");
	}

	public int updateMyTeamPlayer1(int item) throws Exception {
		return session.update("updateMyTeamPlayer1", item);
	}

	public int updateMyTeamPlayer2(int item) throws Exception {
		return session.update("updateMyTeamPlayer2", item);
	}

	public int updateMyTeamPlayer3(int item) throws Exception {
		return session.update("updateMyTeamPlayer3", item);
	}

	public int updateMyTeamPlayer4(int item) throws Exception {
		return session.update("updateMyTeamPlayer4", item);
	}

	public int updateMyTeamPlayer5(int item) throws Exception {
		return session.update("updateMyTeamPlayer5", item);
	}

	public int updateMyTeamPlayer6(int item) throws Exception {
		return session.update("updateMyTeamPlayer6", item);
	}

	public int updateMyTeamPlayer7(int item) throws Exception {
		return session.update("updateMyTeamPlayer7", item);
	}

	public int updateMyTeamPlayer8(int item) throws Exception {
		return session.update("updateMyTeamPlayer8", item);
	}

	public int updateMyTeamPlayer9(int item) throws Exception {
		return session.update("updateMyTeamPlayer9", item);
	}

	public int updateMyTeamPlayer10(int item) throws Exception {
		return session.update("updateMyTeamPlayer10", item);
	}

	public int updateMyTeamPlayer11(int item) throws Exception {
		return session.update("updateMyTeamPlayer11", item);
	}

	

	public EveryTeam getListEveryTeam() throws Exception {
		return session.selectOne("getListEveryTeam");
	}

	public int insertEveryTeam(EveryTeam everyTeam) throws Exception {
		return session.insert("insertEveryTeam", everyTeam);
	}

	public List<Board> getListBoard() throws Exception {
		return session.selectList("getListBoard");
	}

	public Board getBoardById(int boardId) throws Exception {
		return session.selectOne("getBoardById", boardId);
	}

	public List<Players> getListPlayersByBoardId(int boardId) throws Exception {
		return session.selectList("getListPlayersByBoardId", boardId);
	}

	public Players getBoardPlayer1(String usersId) throws Exception {
		return session.selectOne("getBoardPlayer1", usersId);
	}

	public Players getBoardPlayer2(String usersId) throws Exception {
		return session.selectOne("getBoardPlayer2", usersId);
	}

	public Players getBoardPlayer3(String usersId) throws Exception {
		return session.selectOne("getBoardPlayer3", usersId);
	}

	public Players getBoardPlayer4(String usersId) throws Exception {
		return session.selectOne("getBoardPlayer4", usersId);
	}

	public Players getBoardPlayer5(String usersId) throws Exception {
		return session.selectOne("getBoardPlayer5", usersId);
	}

	public Players getBoardPlayer6(String usersId) throws Exception {
		return session.selectOne("getBoardPlayer6", usersId);
	}

	public Players getBoardPlayer7(String usersId) throws Exception {
		return session.selectOne("getBoardPlayer7", usersId);
	}

	public Players getBoardPlayer8(String usersId) throws Exception {
		return session.selectOne("getBoardPlayer8", usersId);
	}

	public Players getBoardPlayer9(String usersId) throws Exception {
		return session.selectOne("getBoardPlayer9", usersId);
	}

	public Players getBoardPlayer10(String usersId) throws Exception {
		return session.selectOne("getBoardPlayer10", usersId);
	}

	public Players getBoardPlayer11(String usersId) throws Exception {
		return session.selectOne("getBoardPlayer11", usersId);
	}

	public int getTeamIdByUserIdNewest(String usersId) throws Exception {
		return session.selectOne("getTeamIdByUserIdNewest", usersId);
	}

	public void insertBoard(Board board) throws Exception {
		session.insert("insertBoard", board);
	}

	public List<Comments> getListCommentsByBoardId(int boardBoardId) throws Exception {
		return session.selectList("getListCommentsByBoardId", boardBoardId);
	}

	public int insertComments(Comments comments) throws Exception {
		return session.insert("insertComments", comments);
	}

	public int deleteBoard(int boardId) throws Exception {
		return session.delete("deleteBoard", boardId);
	}

	public int editBoard(Board board) throws Exception {
		return session.update("editBoard", board);
	}
	
	
	public int selectIdFromUsersUnique(String id) throws Exception {
		return session.selectOne("selectIdFromUsersUnique", id);
	}

}

/*
 * public int insertBoardTeamPlayer1(String id) throws Exception { return
 * session.insert("insertBoardTeamPlayer1", id); }
 */
// DAO11개 만든다. 파라미터는 id resultType은 vo.players
