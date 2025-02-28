package muproject.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import muproject.dao.MuDAO;
import muproject.vo.Board;
import muproject.vo.EveryTeam;
import muproject.vo.Players;

@RestController
public class MURestController {

	@Autowired
	MuDAO dao;

	@CrossOrigin(origins = "http://172.168.119:9000")
	@GetMapping("/checkPlayerData")
	@ResponseBody
	public Map<String, Boolean> checkPlayerData(HttpSession session) {
		// 세션에서 Player 데이터를 가져와서 확인
		Players playerOne = (Players) session.getAttribute("Playerone");
		Players playerTwo = (Players) session.getAttribute("Playertwo");
		Players playerThree = (Players) session.getAttribute("Playerthree");
		Players playerFour = (Players) session.getAttribute("Playerfour");
		Players playerFive = (Players) session.getAttribute("Playerfive");
		Players playerSix = (Players) session.getAttribute("Playersix");
		Players playerSeven = (Players) session.getAttribute("Playerseven");
		Players playerEight = (Players) session.getAttribute("Playereight");
		Players playerNine = (Players) session.getAttribute("Playernine");
		Players playerTen = (Players) session.getAttribute("Playerten");
		Players playerEleven = (Players) session.getAttribute("Playereleven");

		// 나머지 Player 데이터도 검사
		boolean allPlayersAvailable = playerOne != null && playerTwo != null && playerThree != null
				&& playerFour != null && playerFive != null && playerSix != null && playerSeven != null
				&& playerEight != null && playerNine != null && playerTen != null && playerEleven != null;

		Map<String, Boolean> result = new HashMap<>();
		result.put("allPlayersAvailable", allPlayersAvailable);

		return result;
	}

	@CrossOrigin(origins = "http://172.168.119:9000")
	@PostMapping("/setFormation")
	@ResponseBody
	public Map<String, String> setSessionAttribute(@RequestParam String attributeName,
			@RequestParam String attributeValue, HttpSession session) {
		// 세션에 속성 설정
		session.setAttribute(attributeName, attributeValue);
		System.out.println("session에 포메이션 저장 " + attributeName + attributeValue);
		// 응답 데이터 생성
		Map<String, String> response = new HashMap<>();
		response.put("message", "Session attribute set successfully");

		return response;
	}

	@CrossOrigin(origins = "http://172.168.119:9000")
	@GetMapping("/getFormation")
	public String getCurrentFormation(HttpSession session) {
		// 서버에서 현재 포메이션 값을 가져올 로직을 구현합니다.
		String currentFormation = (String) session.getAttribute("currentFormation");
		return currentFormation;
	}

	@CrossOrigin(origins = "http://172.168.119:9000")
	@GetMapping("/getFormationForm")
	public String getCurrentFormationForm(HttpSession session) {
		// 서버에서 현재 포메이션 값을 가져올 로직을 구현합니다.
		EveryTeam everyteam = (EveryTeam) session.getAttribute("everyTeam");
		String formation = everyteam.getFormation();

		return formation;
	}

	@CrossOrigin(origins = "http://172.168.119:9000")
	@GetMapping("/getFormationArticle")
	public String getCurrentFormationArticle(HttpSession session) throws Exception {
		// 서버에서 현재 포메이션 값을 가져올 로직을 구현합니다.
		 Board board = (Board)session.getAttribute("board");
		int everyTeamId =board.getEveryTeamTeamId();
		 EveryTeam everyteam = dao.getEveryTeamById(everyTeamId);
		String formation = everyteam.formation;
		System.out.println("getFormationArticle 실행"+formation);
		return formation;
	}

}