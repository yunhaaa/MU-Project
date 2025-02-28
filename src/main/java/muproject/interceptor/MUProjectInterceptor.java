package muproject.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class MUProjectInterceptor extends HandlerInterceptorAdapter{
   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
         throws Exception {
      //login 여부 체크하여 login.jsp
      HttpSession session = request.getSession();
      String userId = (String) session.getAttribute("id");
      if(userId==null || userId.length()==0) {
         response.sendRedirect("login.do");
         return false;
      }
      System.out.println("맨유 인터셉트");
      return true;
   }
}