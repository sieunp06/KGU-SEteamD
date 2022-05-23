package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import controller.Action;
import reservation.ConfirmDAO;

public class ConfirmAction implements Action {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        /**
         * 데이터 요청을 하는 부분
         * */

        Gson gson = new Gson();
        request.setAttribute("re_data", gson.toJson(ConfirmDAO.getInstance().getRervation()));

        return "RequestDispatcher:confirm.jsp";
    }
}