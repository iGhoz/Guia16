<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Registrar Estudiantes de un Colegio</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-info">
			<div>
				<a href="user-list.jsp" class="navbar-brand"> ADMINISTRAR
					ESTUDIANTES </a>
			</div>
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/listUser"
					class="nav-link">VER ESTUDIANTES</a></li>
				<li><a href="<%=request.getContextPath()%>/new"
					class="nav-link">INSERTAR ESTUDIANTES</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>
				<caption>
					<h2>
						<c:if test="${user != null}">
EDITAR ESTUDIANTE
</c:if>
						<c:if test="${user == null}">
INSERTAR NUEVO ESTUDIANTE
</c:if>
					</h2>
				</caption>
				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>
				<fieldset class="form-group">
					<label>NOMBRE</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>E-MAIL</label> <input type="text"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email">
				</fieldset>
				<fieldset class="form-group">
					<label>GRADO</label> <input type="text"
						value="<c:out value='${user.grado}' />" class="form-control"
						name="grado">
				</fieldset>
				<button type="submit" class="btn btn-info">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>