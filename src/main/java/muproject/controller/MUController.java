package muproject.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import muproject.dao.MuDAO;

import muproject.vo.Board;
import muproject.vo.Comments;
import muproject.vo.EveryTeam;
import muproject.vo.MyTeam;
import muproject.vo.Players;

@Controller
public class MUController {

	@Autowired
	MuDAO dao;

	@RequestMapping("/")
	public String home() {
		// 시작 페이지를 로그인 창으로 한다.
		return "home";
	}



	@RequestMapping("/mainFormationReset.do")
	   public String mainFomationReset(HttpServletRequest req, Model model, HttpSession session) throws Exception {
	      // 메인 화면으로 보내기

	      int count = 0;
	      try {
	         String items[] = req.getParameterValues("item");
	         for (String item : items) {
	            count++;

	            int tmpItem = Integer.parseInt(item);

	            if (count == 1) {
	               dao.updateMyTeamPlayer1(tmpItem);
	            } else if (count == 2) {
	               dao.updateMyTeamPlayer2(tmpItem);
	            } else if (count == 3) {
	               dao.updateMyTeamPlayer3(tmpItem);
	            } else if (count == 4) {
	               dao.updateMyTeamPlayer4(tmpItem);
	            } else if (count == 5) {
	               dao.updateMyTeamPlayer5(tmpItem);
	            } else if (count == 6) {
	               dao.updateMyTeamPlayer6(tmpItem);
	            } else if (count == 7) {
	               dao.updateMyTeamPlayer7(tmpItem);
	            } else if (count == 8) {
	               dao.updateMyTeamPlayer8(tmpItem);
	            } else if (count == 9) {
	               dao.updateMyTeamPlayer9(tmpItem);
	            } else if (count == 10) {
	               dao.updateMyTeamPlayer10(tmpItem);
	            } else if (count == 11) {
	               dao.updateMyTeamPlayer11(tmpItem);
	            }

	            System.out.println("[" + item + "] ");
	            MyTeam myTeam = new MyTeam();
	            myTeam = dao.getListMyTeam();
	            System.out.println(myTeam);
	            session.setAttribute("myTeamList", myTeam);

	         }
	      } catch (Exception e) {

	      }

	      try {
	         String items2[] = req.getParameterValues("item");
	         List<Players> selectedPlayers = new ArrayList<>();
	         for (String item2 : items2) {
	            System.out.println("ddddxdsds" + item2);

	            int playerId = Integer.parseInt(item2);
	            Players players = dao.getPlayersById(playerId);
	            System.out.println(players);
	            selectedPlayers.add(players);

	            System.out.println("ddd: " + selectedPlayers);
	            session.setAttribute("selectedPlayers", selectedPlayers);
	            // session.setAttribute("selectedPlayerPopup", selectedPlayers);

	         }

	      } catch (Exception e) {

	      }

	      try {
	         String items3[] = req.getParameterValues("item");
	         System.out.println("길이 " + items3.length);
	         List<Players> selectedPopupPlayers = new ArrayList<>();
	         for (String item3 : items3) {
	            System.out.println("아이템?" + item3);

	            int playerId2 = Integer.parseInt(item3);
	            Players players2 = dao.getPlayersById(playerId2);
	            System.out.println(players2);
	            selectedPopupPlayers.add(players2);

	            session.setAttribute("selectedPopupPlayers", selectedPopupPlayers);
	         }
	      } catch (Exception e) {
	         
	      }
	      
	      session.removeAttribute("Playerone");

	      session.removeAttribute("Playertwo");

	      session.removeAttribute("Playerthree");

	      session.removeAttribute("Playerfour");

	      session.removeAttribute("Playerfive");

	      session.removeAttribute("Playersix");

	      session.removeAttribute("Playerseven");

	      session.removeAttribute("Playereight");

	      session.removeAttribute("Playernine");

	      session.removeAttribute("Playerten");

	      session.removeAttribute("Playereleven");

	      return "main";
	   }

	@RequestMapping("/main.do")
	public String main(HttpServletRequest req, Model model, HttpSession session) throws Exception {
		// 메인 화면으로 보내기

		int count = 0;
		try {
			String items[] = req.getParameterValues("item");
			for (String item : items) {
				count++;

				int tmpItem = Integer.parseInt(item);

				if (count == 1) {
					dao.updateMyTeamPlayer1(tmpItem);
				} else if (count == 2) {
					dao.updateMyTeamPlayer2(tmpItem);
				} else if (count == 3) {
					dao.updateMyTeamPlayer3(tmpItem);
				} else if (count == 4) {
					dao.updateMyTeamPlayer4(tmpItem);
				} else if (count == 5) {
					dao.updateMyTeamPlayer5(tmpItem);
				} else if (count == 6) {
					dao.updateMyTeamPlayer6(tmpItem);
				} else if (count == 7) {
					dao.updateMyTeamPlayer7(tmpItem);
				} else if (count == 8) {
					dao.updateMyTeamPlayer8(tmpItem);
				} else if (count == 9) {
					dao.updateMyTeamPlayer9(tmpItem);
				} else if (count == 10) {
					dao.updateMyTeamPlayer10(tmpItem);
				} else if (count == 11) {
					dao.updateMyTeamPlayer11(tmpItem);
				}

				System.out.println("[" + item + "] ");
				MyTeam myTeam = new MyTeam();
				myTeam = dao.getListMyTeam();
				System.out.println(myTeam);
				session.setAttribute("myTeamList", myTeam);

			}
		} catch (Exception e) {

		}

		try {
			String items2[] = req.getParameterValues("item");
			List<Players> selectedPlayers = new ArrayList<>();
			for (String item2 : items2) {
				System.out.println("ddddxdsds" + item2);

				int playerId = Integer.parseInt(item2);
				Players players = dao.getPlayersById(playerId);
				System.out.println(players);
				selectedPlayers.add(players);

				System.out.println("ddd: " + selectedPlayers);
				session.setAttribute("selectedPlayers", selectedPlayers);
				session.setAttribute("selectedPlayerPopup", selectedPlayers);

			}

		} catch (Exception e) {

		}

		return "main";
	}
	@RequestMapping("/mainDelete.do")
	public String mainDelete(HttpServletRequest req, HttpSession session) throws Exception {
	
		int id= (int) session.getAttribute("positioning");
		
		List<Players> select1 = (List<Players>) session.getAttribute("selectedPopupPlayers");
	      // playerId와 일치하는 객체 찾아서 삭제
	      Iterator<Players> iterator = select1.iterator();
	      while (iterator.hasNext()) {
	         Players player = iterator.next();
	         if (player.getPlayerId() == id) {
	            iterator.remove(); // playerId가 일치하는 객체 삭제
	         }
	      }
		
		
		
		
		
		return "redirect:/main.do";
	}
	
	

	@RequestMapping("/save.do")
	public String saveSqurd(HttpServletRequest req, HttpSession session) throws Exception {

		EveryTeam everyTeam = new EveryTeam();

		Players tmpPlayer1 = (Players) session.getAttribute("Playerone");
		Players tmpPlayer2 = (Players) session.getAttribute("Playertwo");
		Players tmpPlayer3 = (Players) session.getAttribute("Playerthree");
		Players tmpPlayer4 = (Players) session.getAttribute("Playerfour");
		Players tmpPlayer5 = (Players) session.getAttribute("Playerfive");
		Players tmpPlayer6 = (Players) session.getAttribute("Playersix");
		Players tmpPlayer7 = (Players) session.getAttribute("Playerseven");
		Players tmpPlayer8 = (Players) session.getAttribute("Playereight");
		Players tmpPlayer9 = (Players) session.getAttribute("Playernine");
		Players tmpPlayer10 = (Players) session.getAttribute("Playerten");
		Players tmpPlayer11 = (Players) session.getAttribute("Playereleven");

		everyTeam.player1Id = tmpPlayer1.playerId;
		everyTeam.player2Id = tmpPlayer2.playerId;
		everyTeam.player3Id = tmpPlayer3.playerId;
		everyTeam.player4Id = tmpPlayer4.playerId;
		everyTeam.player5Id = tmpPlayer5.playerId;
		everyTeam.player6Id = tmpPlayer6.playerId;
		everyTeam.player7Id = tmpPlayer7.playerId;
		everyTeam.player8Id = tmpPlayer8.playerId;
		everyTeam.player9Id = tmpPlayer9.playerId;
		everyTeam.player10Id = tmpPlayer10.playerId;
		everyTeam.player11Id = tmpPlayer11.playerId;
		everyTeam.usersId = (String) session.getAttribute("id");

		String formation = (String) session.getAttribute("currentFormation");
		System.out.println("formation from session : " + formation);

		everyTeam.formation = formation;

		dao.insertEveryTeam(everyTeam);
		System.out.println("insertEveryTeam 실행함 : " + everyTeam);
		session.setAttribute("everyTeam", everyTeam);

		return "redirect:/main.do";
	}

	@RequestMapping("/popupPlayer.do")
	public String popupplayer(HttpServletRequest req, HttpSession session, int position , int playerId) throws Exception {
		// 팝업으로 포메이션에 내 선수목록 안에서 선수 고를 수 있는 창
		
		List<Players> select1 = (List<Players>) session.getAttribute("selectedPopupPlayers");
	      // playerId와 일치하는 객체 찾아서 삭제
		 if ((Integer)playerId != null) {
		        // playerId에 해당하는 player 객체를 가져옵니다.
		        Players player = dao.getPlayersById(playerId);
		        session.setAttribute("positioning", playerId);
		        // player 객체를 select1 리스트에 추가합니다.
		        select1.add(player);
		    }

		session.setAttribute("position", position);
		return "popup_player";
	}
	@RequestMapping("/popupPlayer1.do")
	public String popupplayer1(HttpServletRequest req, HttpSession session, int position) throws Exception {
		// 팝업으로 포메이션에 내 선수목록 안에서 선수 고를 수 있는 창
	
		
		session.setAttribute("position", position);
		return "popup_player";
	}

	@RequestMapping("/position.do")
	   public String position(HttpServletRequest req, HttpSession session, int playerId) throws Exception {
	      System.out.println("선수 번호는" + playerId);
	      Players players = dao.getPlayersById(playerId);
	      System.out.println(players);

	      int position = (int) session.getAttribute("position");
	      System.out.println("포지션 번호는 ?????? " + position);
	      if (position == 1) {
	         System.out.println("1포지션설정");
	         session.setAttribute("Playerone", players);
	      } else if (position == 2) {
	         session.setAttribute("Playertwo", players);
	      } else if (position == 3) {
	         session.setAttribute("Playerthree", players);
	      } else if (position == 4) {
	         session.setAttribute("Playerfour", players);

	      } else if (position == 5) {
	         session.setAttribute("Playerfive", players);

	      } else if (position == 6) {
	         session.setAttribute("Playersix", players);

	      } else if (position == 7) {
	         session.setAttribute("Playerseven", players);

	      } else if (position == 8) {
	         session.setAttribute("Playereight", players);

	      } else if (position == 9) {
	         session.setAttribute("Playernine", players);

	      } else if (position == 10) {
	         session.setAttribute("Playerten", players);

	      } else if (position == 11) {
	         session.setAttribute("Playereleven", players);
	      }

	      List<Players> select1 = (List<Players>) session.getAttribute("selectedPopupPlayers");
	      // playerId와 일치하는 객체 찾아서 삭제
	      Iterator<Players> iterator = select1.iterator();
	      while (iterator.hasNext()) {
	         Players player = iterator.next();
	         if (player.getPlayerId() == playerId) {
	            iterator.remove(); // playerId가 일치하는 객체 삭제
	         }
	      }

	      return "redirect:/main.do";
	   }

	@RequestMapping("/mainAddEveryteam")
	public String mainAddEveryteam(HttpServletRequest req, Model model) throws Exception {
		return "redirect:/main.do";
	}

	@RequestMapping("/listEveryPlayer.do")
	public String listeveryplayer(HttpServletRequest req, Model model) throws Exception {
		// 전체선수 확인창으로 보내기
		List<Players> list = dao.getListPlayers();
		System.out.println("리스트에 값이? : " + list);
		model.addAttribute("playersList", list);
		// req.setAttribute("playersList", list);
		return "list_every_player";
	}

	@RequestMapping("/details.do")
	public String details(HttpServletRequest req, HttpSession session, String playerId) throws Exception {
		// 전체선수 확인창으로 보내기
		System.out.println("디테일1");
		System.out.println(playerId);

		int Id = Integer.parseInt(playerId);
		Players player = dao.getListPlayersDetail(Id);
		System.out.println("가져온 선수 정보는? : " + player);
		session.setAttribute("playerDetail", player);

		// req.setAttribute("playersList", list);
		return "details";
	}

	@RequestMapping("/board.do")
	public String board(HttpServletRequest req, Model model, HttpSession session) throws Exception {
		// 게시판 목록창으로 보내기
		List<Board> boardList = dao.getListBoard();
		System.out.println(boardList);
		session.setAttribute("boardList", boardList);

		return "board";
	}

	@RequestMapping(value = "/registerBoard.do")
	public String registerboard(Board bo, HttpServletRequest req, HttpSession session) throws Exception {
		String usersId = (String) session.getAttribute("id");
		int tmpTeamId = dao.getTeamIdByUserIdNewest(usersId);
		System.out.println("dkdkdkdkd" + tmpTeamId);
		String boardTitle = req.getParameter("boardTitle");
		String article = req.getParameter("article");
		System.out.println("tlqkf" + boardTitle + article);

		Board board = new Board();
		board.usersId = usersId;
		board.everyTeamTeamId = tmpTeamId;
		board.article = article;
		board.boardTitle = boardTitle;

		dao.insertBoard(board);

		return "redirect:/board.do";
	}

	@RequestMapping("/boardForm.do")
	public String boardform(HttpServletRequest req, HttpSession session) throws Exception {
		// 게시판 작성창으로 보내기
		String usersId = (String) session.getAttribute("id");
		Players player1 = dao.getBoardPlayer1(usersId);
		session.setAttribute("player1", player1);
		Players player2 = dao.getBoardPlayer2(usersId);
		session.setAttribute("player2", player2);
		Players player3 = dao.getBoardPlayer3(usersId);
		session.setAttribute("player3", player3);
		Players player4 = dao.getBoardPlayer4(usersId);
		session.setAttribute("player4", player4);
		Players player5 = dao.getBoardPlayer5(usersId);
		session.setAttribute("player5", player5);
		Players player6 = dao.getBoardPlayer6(usersId);
		session.setAttribute("player6", player6);
		Players player7 = dao.getBoardPlayer7(usersId);
		session.setAttribute("player7", player7);
		Players player8 = dao.getBoardPlayer8(usersId);
		session.setAttribute("player8", player8);
		Players player9 = dao.getBoardPlayer9(usersId);
		session.setAttribute("player9", player9);
		Players player10 = dao.getBoardPlayer10(usersId);
		session.setAttribute("player10", player10);
		Players player11 = dao.getBoardPlayer11(usersId);
		session.setAttribute("player11", player11);
//	   System.out.println("dddd팀아이디숫자는 :" + result);
//	   System.out.println("ddddd들고와라 " + player1);
		// session 에다가 내가 쓴 everyteam의 가장 최신 스쿼드를 저장해야함.

		// ㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗ
		// 띄우는데 DAO에서 id따라 달라짐.

		return "board_form";
	}

	@RequestMapping("/boardArticle.do")
	public String boardarticle(HttpServletRequest req, HttpSession session, int boardId, String commentText)
			throws Exception {
		// 게시판 내용확인 창으로 보내기
		Board board = dao.getBoardById(boardId);
		session.setAttribute("board", board);

		List<Players> players = dao.getListPlayersByBoardId(boardId);
		System.out.println(players.get(0));
		System.out.println("players :" + players);
		session.setAttribute("boardPlayer", players);

		// 댓글쓰기 기능

		List<Comments> commentsList = dao.getListCommentsByBoardId(boardId);
		session.setAttribute("comments", commentsList);
//
//    // * 저장할 때 사용하기, 불러올 때는 현재 시간이 필요없으니깐, insert 할 떄 사용한다.
//     

		return "board_article";
	}

	@RequestMapping("/boardArticleComments.do")
	public String boardArticleComments(HttpServletRequest req, HttpSession session) throws Exception {

		int boardId = Integer.parseInt(req.getParameter("boardBoardId"));
		System.out.println("boardIddsadsadsadsa : " + boardId);

		List<Comments> commentsList = dao.getListCommentsByBoardId(boardId);
		session.setAttribute("comments", commentsList);

		// * 저장할 때 사용하기, 불러올 때는 현재 시간이 필요없으니깐, insert 할 떄 사용한다.

		String commentText = req.getParameter("commentText");
		String userNickName = req.getParameter("nickname");

		Comments comments = new Comments();
		comments.setBoardBoardId(boardId);
		comments.setCommentText(commentText);
		comments.setUsersNickName(userNickName);

		Date currentTime = new Date();

		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String postTimeStr = simpleDateFormat.format(currentTime);

		Timestamp postTime = Timestamp.valueOf(postTimeStr);
		comments.setPostTime(postTime);

		System.out.println("확인!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" + boardId);

		dao.insertComments(comments);
		String boardIdtmp = (String) req.getParameter("boardBoardId");
		return "redirect:/boardArticle.do?boardId=" + boardIdtmp;
	}

	@RequestMapping("/delete.do")
	public String delete(HttpServletRequest req, HttpSession session, int boardId) throws Exception {
		// 게시판 작성창으로 보내기
		dao.deleteBoard(boardId);
		System.out.println("delete함수 실행됨");
		return "redirect:/board.do";
	}

	@RequestMapping("/boardEdit.do")
	public String boardEditForm(int boardId, HttpSession session) throws Exception {
		// 게시판 수정창으로 보내기
		Board board = dao.getBoardById(boardId);
		System.out.println("수정을위한 보드는 " + board);
		session.setAttribute("editBoard", board);
		System.out.println("boardEdit함수실행됨");
		return "board_edit";
	}

	@RequestMapping("/edit.do")
	public String boardEdit(Board board, HttpSession session, int boardId) throws Exception {
		List<Players> players = dao.getListPlayersByBoardId(boardId);
		session.setAttribute("boardPlayer", players);

		dao.editBoard(board);
		System.out.println("수정함수실행됨");
		return "redirect:/board.do";
	}

}