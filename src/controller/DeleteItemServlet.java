package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoFactory;
import dao.ItemDao;
import domain.Item;

/**
 * Servlet implementation class DeleteItemServlet
 */
@WebServlet("/deleteItem")
public class DeleteItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteItemServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String strItemId = request.getParameter("id");

			Item item = new Item();
			item.setId(Integer.parseInt(strItemId));
			ItemDao itemDao = DaoFactory.createItemDao();
			itemDao.delete(item);
			request.setAttribute("itemId", strItemId);
			request.getRequestDispatcher("WEB-INF/view/deleteItemDone.jsp").forward(request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
