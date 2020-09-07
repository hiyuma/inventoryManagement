<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link href="css/all.min.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" />
<title>備品リスト</title>
</head>
<body>
	<div class="container">
	<c:import url="parts/header.jsp" />
		<div class="row">
			<div class="col-md-12">

				<h1>備品リスト</h1>

				<table class="table table-bordered">
					<thead>
						<tr>
							<th>品名</th>
							<th>数量</th>
							<th>場所</th>
							<th>備考</th>
							<th>登録日</th>
							<th>更新日</th>
							<th>編集</th>
							<th>削除</th>
						</tr>
					</thead>

					<c:forEach var="item" items="${itemList}">
						<tbody>
							<tr>
								<td><c:out value="${item.name}" /></td>
								<td><c:out value="${item.amount}" /></td>
								<td><c:out value="${item.locationName}" /></td>
								<td><c:out value="${item.note}" /></td>
								<td><fmt:formatDate value="${item.registered}"
										pattern="yyyy-MM-dd HH:mm" /></td>
								<td><fmt:formatDate value="${item.updated}"
										pattern="yyyy-MM-dd HH:mm" /></td>
								<td><a class="edit-confirm btn page-link text-dark d-inline-block btn-sm text-nowrap"
									href="editItem?id=<c:out value="${item.id}"/>">編集</a></td>
								<td><a class="delete-confirm btn btn-danger btn-sm text-nowrap"
									href="deleteItem?id=<c:out value="${item.id}"/>">削除</a></td>

								<!-- 	data-toggle="modal" data-target="#confirm-delete" -->
							</tr>
						</tbody>
					</c:forEach>
				</table>

				<a href="addItem" class="btn btn-primary">備品の追加</a>

				<!-- モーダルのはいをクリックするとDeleteItemServletへpostしたい-->

				<!-- <div class="modal fade" id="confirm-delete" tabindex="-1"
					role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">確認</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">削除してよろしいですか？</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">いいえ</button>

								<form action="deleteItem" method="post">
									<Button type="submit" class="btn btn-primary">はい</Button>
								</form>
							</div>
						</div>
					</div>
				</div> -->

			</div>
		</div>
	</div>

	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>