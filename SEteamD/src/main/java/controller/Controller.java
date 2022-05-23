package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controller extends HttpServlet{
    /**
     ***
     */
    private static final long serialVersionUID = 1L;

    /**
     ***
     */
    @SuppressWarnings("deprecation")
	@Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String RequestURI=request.getRequestURI();
        String contextPath=request.getContextPath();
        String command=RequestURI.substring(contextPath.length());
        Action action = null;
        String forward = null;

        ServletContext context = getServletContext();

        //������Ƽ���� ������ �Ѿ�� .do�� ã�Ƽ� �����´�
        String fullPath = context.getRealPath("/WEB-INF/class.properties");
        Properties prop = new Properties();
        FileInputStream fis = new FileInputStream(fullPath);

        prop.load(fis);

        fis.close();

        String classPath = prop.getProperty(command);

        try{
            Class<?> url = Class.forName(classPath);
            //�� URL�� �׼� Ÿ���̴�
            System.out.println(classPath+"여기?"+url);
            action = (Action) url.newInstance();
            System.out.println("여기?");
           
            try {
                System.out.println("여기는 controller try 안 입니당?");
                forward = action.execute(request, response); //ActionŬ������ ������ ��, ������� forward ������ ����ϴ�.
            } catch (Exception e) {
                //���� �Ҿ���ȴµ�, �۾��� �����Ҷ�
            	System.out.println("세션");
            	System.out.println(e);
            }
        }catch(ClassNotFoundException ex){
            ex.printStackTrace();
        }catch(InstantiationException ex){
            ex.printStackTrace();
        }catch(IllegalAccessException ex){
            ex.printStackTrace();
        }catch(NullPointerException ex)
        {
            ex.printStackTrace();
        }

        /**
         * Action클래스 종료 이후, 반환받았던 변수인 forward를 분석하여 톰캣으로 넘겨줍니다.
         * */

                //return으로 받은 URL(경로?)을 처리
                //톰켓으로 부터 컨트롤러왔는데 처리하고 다시 톰켓한테 돌려준다
        if(forward != null){

            if(forward.contains("RequestDispatcher:"))
            {
                String jspName = (forward.split(":")[1]);
                //request.getRequestDispatcher("webapp/" + forward.split(":")[1]).forward(request, response);
                request.getRequestDispatcher(forward.split(":")[1]).forward(request, response);
                System.out.println("controller 마지막에 jspName은"+jspName);
            }
            else {
                PrintWriter pr = response.getWriter();
                pr.print(forward);
                pr.flush();
                pr.close();
            }
        }
    }

}
