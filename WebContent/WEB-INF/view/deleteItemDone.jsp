<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" />
<title>備品削除</title>
</head>
<body>
<div class="container">
<c:import url="parts/header.jsp" />
		<div class="row">
			<div class="col-md-12">
				<h1>備品削除</h1>
				<p>備品:ID <c:out value="${itemId}"/><c:out value="${name}"/>の削除が完了しました。</p>
				<a href="listItem">備品リストに戻る</a>
			</div>
		</div>
	</div>
<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>