package muproject.vo;

import java.sql.Timestamp;

public class Comments {

   public int commentId;
   public int boardBoardId;
   public String commentText;
   public Timestamp postTime;
   public String usersNickName;
   
   
   public int getCommentId() {
      return commentId;
   }
   public void setCommentId(int commentId) {
      this.commentId = commentId;
   }
   public int getBoardBoardId() {
      return boardBoardId;
   }
   public void setBoardBoardId(int boardBoardId) {
      this.boardBoardId = boardBoardId;
   }
   public String getCommentText() {
      return commentText;
   }
   public void setCommentText(String commentText) {
      this.commentText = commentText;
   }
   public Timestamp getPostTime() {
      return postTime;
   }
   public void setPostTime(Timestamp postTime) {
      this.postTime = postTime;
   }
   
   
   
   public String getUsersNickName() {
      return usersNickName;
   }
   public void setUsersNickName(String usersNickName) {
      this.usersNickName = usersNickName;
   }
   @Override
   public String toString() {
      return "Comments [commentId=" + commentId + ", boardBoardId=" + boardBoardId + ", commentText=" + commentText
            + ", postTime=" + postTime + ", usersNickName=" + usersNickName + "]";
   }

   
   
   
}