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
<title>備品情報の編集</title>
</head>
<body>
	<div class="container">
	<c:import url="parts/header.jsp" />
		<div class="row">
			<div class="col-md-12">

				<h1>備品情報の編集</h1>

				<form action="" method="post">

					<div class="form-group">

						<label for="name">品名(必須)</label>
						<c:if test="${not empty nameError}">
							<p class="text-danger">
								<c:out value="${nameError}" />
							</p>
						</c:if>
						<input class="form-control" type="text" name="name" id="name"
							value="<c:out value="${name}"/>">
					</div>

					<div class="form-group">

						<label for="amount">数量(必須)</label>
						<c:if test="${not empty amountError}">
							<p class="text-danger">
								<c:out value="${amountError}" />
							</p>
						</c:if>
						<input class="form-control" type="number" name="amount"
							id="amount" value="<c:out value="${amount}"/>">
					</div>

					<div class="form-group">
						<label for="location">場所(必須)</label> <select class="form-control"
							name="location" id="location">
							<c:forEach var="location" items="${locationList}">
								<option value="<c:out value="${location.id}" />"
									<c:if test="${location.id == locationId}">selected</c:if>>
									<c:out value="${location.name}" />
								</option>
							</c:forEach>
						</select>

						<div class="form-group">
							<label for="note">備考</label>
							<textarea rows="5" cols="20" class="form-control" name="note"
								id="note"><c:out value="${note}" /></textarea>
						</div>

						<input class="btn btn-primary" type="submit" value="保存"> <a
							class="btn page-link text-dark d-inline-block" href="listItem">キャンセル</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>