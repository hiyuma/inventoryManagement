package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoFactory;
import dao.ItemDao;
import dao.LocationDao;
import domain.Item;
import domain.Location;

/**
 * Servlet implementation class AddItemServlet
 */
@WebServlet("/addItem")
public class AddItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddItemServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			LocationDao locationDao = DaoFactory.createLocationDao();
			List<Location> locationList = locationDao.findAll();
			request.setAttribute("locationList", locationList);
			request.getRequestDispatcher("WEB-INF/view/addItem.jsp").forward(request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			LocationDao locationDao = DaoFactory.createLocationDao();
			List<Location> locationList = locationDao.findAll();
			request.setAttribute("locationList", locationList);

			String name = request.getParameter("name");
			String strAmount = request.getParameter("amount");
			Integer amount = null;
			Integer locationId = Integer.parseInt(request.getParameter("location"));
			String note = request.getParameter("note");

            //入力した内容の再表示用
			request.setAttribute("name", name);
			request.setAttribute("amount", strAmount);
			request.setAttribute("locationId", locationId);
			request.setAttribute("note", note);

			//バリデーション
			boolean isError = false;

			if (name.isEmpty()) {
				isError = true;
				request.setAttribute("nameError", "※品名が未入力です。");
			}
			if (name.length() > 50) {
				isError = true;
				request.setAttribute("nameError", "※品名を50文字以下で入力してください。");
			}

			if (strAmount.isEmpty()) {
				isError = true;
				request.setAttribute("amountError", "※数量が未入力です。");
			} else {
				try {
					amount = Integer.parseInt(strAmount);
					if (amount < 0) {
						isError = true;
						request.setAttribute("amountError", "※0以上の数を入力してください。");
					}

				} catch (NumberFormatException e) {
					isError = true;
					request.setAttribute("amountError", "※整数を入力してください。");
				}
			}
			if (isError) {
				request.getRequestDispatcher("WEB-INF/view/addItem.jsp").forward(request, response);
				return;
			} // バリデーション終

			//データの追加
			Item item = new Item();
			item.setName(name);
			item.setAmount(amount);
			item.setLocationId(locationId);
			item.setNote(note);

			ItemDao itemDao = DaoFactory.createItemDao();
			itemDao.insert(item);

			request.getRequestDispatcher("WEB-INF/view/addItemDone.jsp").forward(request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
}
