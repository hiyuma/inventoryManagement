<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" />
<title>備品管理システム ログイン</title>
</head>
<body id="login">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card">
					<h5 class="card-header">備品管理システム ログイン</h5>
					<div class="card-body">

						<c:if test="${not empty error}">
							<div class="alert alert-danger">ログインIDかパスワードが正しくありません。</div>
						</c:if>

						<form action="" method="post">

							<div class="form-group">
								<c:if test="${not empty loginIdError}">
									<p class="text-danger">
										<c:out value="${loginIdError}" />
									</p>
								</c:if>

								<input class="form-control" type="text"
									value="<c:out value="${loginId}" />" placeholder="ログインID"
									name="loginId">
							</div>

							<div class="form-group">

								<c:if test="${not empty loginPassError}">
									<p class="text-danger">
										<c:out value="${loginPassError}" />
									</p>
								</c:if>
								<input class="form-control" type="password" placeholder="パスワード"
									name="loginPass">
							</div>

							<div class="form-group">
								<input class="btn btn-primary btn-block" type="submit"
									value="ログイン">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>