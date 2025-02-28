package muproject.vo;

public class Board {
	public String article;
	public String boardTitle;
	public int boardId;
	public String usersId;
	public int everyTeamTeamId;

	public String getArticle() {
		return article;
	}

	public void setArticle(String article) {
		this.article = article;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}

	public String getUsersId() {
		return usersId;
	}

	public void setUsersId(String usersId) {
		this.usersId = usersId;
	}

	public int getEveryTeamTeamId() {
		return everyTeamTeamId;
	}

	public void setEveryTeamTeamId(int everyTeamTeamId) {
		this.everyTeamTeamId = everyTeamTeamId;
	}

	@Override
	public String toString() {
		return "Board [article=" + article + ", boardTitle=" + boardTitle + ", boardId=" + boardId + ", usersId="
				+ usersId + ", everyTeamTeamId=" + everyTeamTeamId + "]";
	}

}