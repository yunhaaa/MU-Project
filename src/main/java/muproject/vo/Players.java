package muproject.vo;

public class Players {
   public int playerId;
   public String playerImage;
   public String playerName;
   public String playerPosition;
   public String playerTeam;
   public int overall;
   public int leftfoot;
   public int rightfoot;
   public String mainfoot;
   public String playerInfo;
   public int shooting;
   public int sprinting;
   public int ballControl;
   public int physicality;
   public int stamina;
   public int passing;
   
   public int getShooting() {
      return shooting;
   }
   public void setShooting(int shooting) {
      this.shooting = shooting;
   }
   public String getPlayerInfo() {
      return playerInfo;
   }
   public void setPlayerInfo(String info) {
      this.playerInfo = info;
   }

   
   public int getPlayerId() {
      return playerId;
   }
   public void setPlayerId(int playerId) {
      this.playerId = playerId;
   }

   public String getPlayerImage() {
      return playerImage;
   }
   public void setPlayerImage(String playerImage) {
      this.playerImage = playerImage;
   }
   public String getPlayerName() {
      return playerName;
   }
   public void setPlayerName(String playerName) {
      this.playerName = playerName;
   }
   public String getPlayerPosition() {
      return playerPosition;
   }
   public void setPlayerPosition(String playerPosition) {
      this.playerPosition = playerPosition;
   }
   public String getPlayerTeam() {
      return playerTeam;
   }
   public void setPlayerTeam(String playerTeam) {
      this.playerTeam = playerTeam;
   }
   public int getOverall() {
      return overall;
   }
   public void setOverall(int overall) {
      this.overall = overall;
   }
   public int getLeftfoot() {
      return leftfoot;
   }
   public void setLeftfoot(int leftfoot) {
      this.leftfoot = leftfoot;
   }
   public int getRightfoot() {
      return rightfoot;
   }
   public void setRightfoot(int rightfoot) {
      this.rightfoot = rightfoot;
   }
   public String getMainfoot() {
      return mainfoot;
   }
   public void setMainfoot(String mainfoot) {
      this.mainfoot = mainfoot;
   }
   public int getSprinting() {
      return sprinting;
   }
   public void setSprinting(int sprinting) {
      this.sprinting = sprinting;
   }
   public int getBallControl() {
      return ballControl;
   }
   public void setBallControl(int ballControl) {
      this.ballControl = ballControl;
   }
   public int getPhysicality() {
      return physicality;
   }
   public void setPhysicality(int physicality) {
      this.physicality = physicality;
   }
   public int getStamina() {
      return stamina;
   }
   public void setStamina(int stamina) {
      this.stamina = stamina;
   }
   public int getPassing() {
      return passing;
   }
   public void setPassing(int passing) {
      this.passing = passing;
   }
   @Override
   public String toString() {
      return "players [playerId=" + playerId + ", playerName=" + playerName + ", playerPosition=" + playerPosition
            + ", playerTeam=" + playerTeam + ", overall=" + overall + ", leftfoot=" + leftfoot + ", rightfoot="
            + rightfoot + ", mainfoot=" + mainfoot + ", sprinting=" + sprinting + ", ballControl=" + ballControl
            + ", physicality=" + physicality + ", stamina=" + stamina + ", passing=" + passing + "]";
   }
   
   
   
   
}