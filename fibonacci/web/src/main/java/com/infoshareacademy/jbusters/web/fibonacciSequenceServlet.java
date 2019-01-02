package com.infoshareacademy.jbusters.web;

import com.infoshareacademy.jbusters.freemarker.TemplateProvider;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.infoshareacademy.jbusters.Fibonacci;

@WebServlet(urlPatterns = "/fibonacciSequence")
public class fibonacciSequenceServlet extends HttpServlet{

        private static final String TEMPLATE_NAME = "fibonacciCalculated";

        @Inject
        private TemplateProvider templateProvider;

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            resp.addHeader("Content-Type", "text/html; charset=utf-8");
            PrintWriter out = resp.getWriter();

            //todo validacja wprowadzonego parametru - tylko dodatnie liczby całkowite
            int requestedElement = Integer.parseInt(req.getParameter("element"));
            List<BigInteger> fibonacciList = new Fibonacci().getFibonacciSequence(requestedElement);

            Map<String, Object> model = new HashMap<>();
            model.put("fibonacciList", fibonacciList);

            Template template = templateProvider.getTemplate(getServletContext(), TEMPLATE_NAME);

            try {
                template.process(model, out);

            } catch (TemplateException e) {
                e.printStackTrace();
            }
        }

}
