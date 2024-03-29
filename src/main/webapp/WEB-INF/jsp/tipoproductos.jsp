<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.0.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<a class="btn btn-primary btn-lg" href="tipoproductosnuevo">Agregar Tipo de Producto</a>
		</div>
		<div class="row justify-content-center">
			<h1>LISTA DE TIPO DE PRODUCTOS</h1>
		</div>
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Nombre</th>
					<th scope="col">Acciones</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="producto" items="${tipoproductos}">
					<tr>
						<th scope="row">${producto.id}</th>
						<td>${producto.nombre}</td>
						<td>
							<button class="btn btn-labeled btn-primary">
								<i class="fa fa-pencil "></i>
							</button>
							<button class="btn btn-labeled btn-danger">
								<i class="fa fa-trash"></i>
							</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>