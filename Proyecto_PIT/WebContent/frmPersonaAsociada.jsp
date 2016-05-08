<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<h1>Hola</h1>

	<button class="btn btn-success" id="btnAgregarPersonasAsociadas">
		<span class="glyphicon glyphicon-floppy-disk"></span>
	</button>

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true" disable="disable">
		<div class="modal-dialog" style="width: 80%;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-titulo" id="myModalLabel">Modificar Datos
						Cliente</h4>
				</div>
				<div class="modal-body" id="container_form_modal_bod">
					<form class="simple_form" id="FormModificarCliente">
						<div class="row">
							<div class="form-group col-sm-3"></div>
							<div class="form-group col-sm-6 form-horizontal form-widgets">
								<label for="txt_cod_cli" class="col-sm-3 control-label">Codigo:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="txt_cod_cli"
										name="txt_cod_cli" disabled="disabled">
								</div>
							</div>
						</div>
						<hr class="featurette-divider">
						<div class="row">
							<div class="form-group col-sm-6 form-horizontal form-widgets">
								<label for="txt_nom_cli" class="col-sm-3 control-label">Nombres:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="txt_nom_cli"
										name="txt_nom_cli">
								</div>
							</div>
							<div class="form-group col-sm-6 form-horizontal form-widgets">
								<label for="txt_aten_cli" class="col-sm-3 control-label">Atención:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="txt_aten_cli"
										name="txt_aten_cli">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group col-sm-7 form-horizontal form-widgets">
									<label for="selTip_Ident" class="col-sm-5 control-label">Tipo
										Identific.:</label>
									<div class="col-sm-7">
										<select class="form-control" id="selTip_Ident"
											name="selTip_Ident">
										</select>
									</div>
								</div>
								<div class="form-group col-sm-5 inputDNI_Modal">
									<div class="col-sm-12">
										<input class="form-control" type="text" name=txtDni_modal
											id="txtDni_modal">
									</div>
								</div>
								<div class="form-group col-sm-5 inputRuc_Modal">
									<div class="col-sm-12">
										<input class="form-control" type="text" name="txtRuc_modal"
											id="txtRuc_modal">
									</div>
								</div>
							</div>
							<div class="form-group col-sm-6 form-horizontal form-widgets">
								<label for="selVend" class="col-sm-3 control-label">Vendedor:</label>
								<div class="col-sm-9">
									<select class="form-control" id="selVend" name="selVend">
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group">
								<div class="col-md-6"></div>
								<div class="col-md-6">
									<button class="btn btn-success" id="btnSave_cliente">
										<span class="glyphicon glyphicon-floppy-disk"></span>
									</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal Start here-->
<script src="bootstrap/js/jquery-2.1.4.min.js"></script>
<script src="js/jsPersonaAsociada.js"></script>
<script src="bootstrap/js/modal.js"></script>
</body>
</html>