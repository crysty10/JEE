package ro.teamnet.z2h.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Dumitru on 10.11.2014.
 */

public class ZeroToHeroServlet extends HttpServlet {

    public String handleServelt(HttpServletRequest req) {
        String response = "Hello <b>" + req.getParameter("firstName") + " " + req.getParameter("lastName") +
                "</b>! Enjoy Zero to hero!!!";
        return response;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.getWriter().write(handleServelt(req));
    }
}