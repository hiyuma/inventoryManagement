<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<header>
	<nav class="navbar navbar-expand-md navbar-light bg-light">
		<div class="navbar-header">
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="ナビゲーションの切替">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand" href="#">備品管理システム</a>
		</div>

		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="#"></a>
					<li>
			</ul>
			<ul class="navbar-nav">
						<li class="nav-item dropdown "><a href="#"
							class="nav-link dropdown-toggle" role="button"
							data-toggle="dropdown" id="navbarDropdownMenuLink"
							aria-haspopup="true" aria-expanded="false"> <i
								class="fas fa-user"></i> <c:out value="${userName}" /></a>

					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="logout">ログアウト</a>
					</div> <!-- ./dropdown-menu --></li>

			</ul>

				</div>
		<!-- /.navbar-collapse -->
	</nav>
</header>