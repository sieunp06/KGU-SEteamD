package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Action;

public class ReservationAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String data = request.getParameter("data");
		System.out.println(data+"여기는 예약 action임!!!!");
		return "성공";
	}

}

