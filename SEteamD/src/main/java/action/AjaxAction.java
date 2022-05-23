package action;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import controller.Action;
import reservation.ReservationDAO;

//@WebServlet("/AjaxAction")
public class AjaxAction implements Action {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Gson gson = new Gson();
		String req = request.getParameter("req"); // JSP���� �Ѱ��� req
		System.out.println(req + "여기는 ajaxAction임");
		HttpSession session = request.getSession(); // Session�� �ִ� ������ ���� �ؾ��� �� ���
		String data = request.getParameter("data"); // JSP���� �Ѱ��� data
		String result = "";
		// String num= request.getParameter("num");
		switch (req) {
			case "addReservation":
			result = ReservationDAO.getInstance().insertReservation(data);
				break;
			case "delectReservation":
			result = ReservationDAO.getInstance().delectReservation(data);
				break;
			case "modifyReservation":
			result = ReservationDAO.getInstance().modifyReservation(data);
				break;
			case "getReservation":
			result = ReservationDAO.getInstance().getReservation(data);
				break;
			case "checkDuplication":
			result = ReservationDAO.getInstance().checkDuplication(data);
				break;
		}
		return result;
	}
}
