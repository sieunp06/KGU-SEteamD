package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebFilter("/*")
public class SFilter implements Filter {

    /**
     * ��� url�� ��û�� �� ���� ó������ ����Ǵ� Ŭ����.
     * �� Ŭ������ ������ UTF-8�� �������� �ʾ� �ѱ��� ���� ����.
     * ��α����ڿ� ���� �Ϻ� ������ ���⵵ ��.
     * Taglib���� ��� �� ���� ������ ����ϱ⵵ ��.
     * */
    @Override
    public void init(FilterConfig filterConfig) throws ServletException { }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)   throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        HttpSession session = request.getSession(true);

        /**
         * �ڹ� ������Ʈ�� UTF-8 ���ڵ����� �����ϰ� �������ִ� ����
         * */
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setHeader("P3P","CP='CAO PSA CONI OTR OUR DEM ONL'");

        String type = (String) session.getAttribute("type");
        if(type == null || type.equals("-") || type.equals("null")) {
            /**
             * type�� null�� ��� ������ �����ϱ� ���� default ������ ��Ÿ�� ������.
             * (�Ϻ� ������������ JS�� type�� �䱸�ϴµ�, null�� ��� ������ �߻��ϴ� ���� ����)
             * */
        }

        chain.doFilter(request, response);


    }

    @Override
    public void destroy() { }
}
