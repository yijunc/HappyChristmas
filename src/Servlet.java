import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import static java.lang.System.out;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Step 1: set the content type
        response.setContentType("text/html");

        // Step 2: get the printwriter
        PrintWriter out = response.getWriter();

        // Step 3: generate HTML content
        out.println("<html><body>");

        out.println("<h2>Hello World</h2>");
        out.println("<hr>");
        out.println("Time on the server is: " + new java.util.Date());

        out.println("</body></html>");
    }
}
