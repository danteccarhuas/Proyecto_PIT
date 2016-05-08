<?xml version="1.0" encoding="utf-8"?>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
<title>Mantener Socio</title>	
<sj:head locale="es" jqueryui="true" jquerytheme="south-street"/>
<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/screen.css" />

			
	<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />

</head>
<body>
	
	<div id="idPrincipal">
			<div id="idCabecera">
				<tiles:insertAttribute	name="cabecera" />
			</div>
			<div id="idCuerpo">
				<div id="idMenu"><tiles:insertAttribute name="menu" /></div>
				<div id="idCentralConMenu">
				
				<s:form action="registraSocio" method="POST">
				
					<center><h1><label>Mantener Socio<br></label></h1></center>
				
					<div id="columna01" style="position: relative;left: 127px;">
					
						<fieldset style="width: 323px" >
						<legend>Datos personales</legend>
							<label >Apellido Paterno</label>
							<s:textfield id="1" name="loginuser1" /><br>
							
							<label>Apellido Materno</label>
							<s:textfield id="2" name="loginuser2" /><br>
							
							<label>Nombres</label>
							<s:textfield id="3" name="loginuser3" /><br>
							
							<label>Tipo Documento</label>
							<s:textfield id="4" name="loginuser4" /><br>
							
							<label>Documento</label>
							<s:textfield id="5" name="loginuser5" /><br>
							
							<label>Correo</label>
							<s:textfield id="6" name="loginuser6" /><br>
							
							<label>Nacionalidad</label>
							<select>
								<option>Nacional</option>
									<option>Extranjero</option>
										
							</select><br>
							
							<label>Telefono</label>
							<s:textfield id="7" name="loginuser7" />
							<s:submit value="+"></s:submit><br>
							
							<table border="1px">
								<tr>
									<td>N°</td>
									<td>Telefono</td>
								</tr>
							</table>
							
							<label>Direcciones</label>
							<s:textfield id="7" name="loginuser7" />
							<s:submit value="+"></s:submit><br>
							
							<table border="1px">
								<tr>
									<td>N°</td>
									<td>Direccion</td>
								</tr>
							</table>
						</fieldset>
						
					</div>
					
					<div id="columna02" style="position: relative;left: 552.7px;top: -152px">
					
					<fieldset style="width: 323px;">
					<legend>Datos de persona asociada</legend>
						
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

						<table border="1">
							<tr>
								<td>idPersona</td>
								<td>Ap.Paterno</td>
								<td>Ap.Materno</td>
								<td>Nombres</td>
								<td>DNI</td>
								<td>Tipo</td>
							</tr>
						
						</table>
						</fieldset>
					</div>
				
					
					<div id="columna04" style="position: relative;left: 128px;top: -47px;">
					
						<fieldset style="    width: 200px;height: 200px;">
							<legend>Foto</legend>
							
							<s:submit value="Agregar"></s:submit>
						</fieldset>
					
					</div>
					
					<div id="columna05" style="    position: relative;left: 400px;top: -246px;">
						<fieldset style="    width: 200px;height: 200px;">
							<legend>Huella</legend>
							<s:submit value="Agregar"></s:submit>
						</fieldset>
					</div>
					
					<div id="columna06" style="    position: relative;left: 673px;top: -445px;">
					
						<fieldset style="    width: 200px;height: 200px;">
							<legend>Firma</legend>
							<s:submit value="Agregar"></s:submit>
						</fieldset>
					</div>
					
					<div id="botones" style="position: relative; top: -389px;left: 442px;">
						<s:submit value="Registrar"></s:submit>
						<s:submit value="Actualizar"></s:submit>
					
					</div>
					<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jsPersonaAsociada.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/modal.js"></script>
				
				</s:form>
						
				
				</div>
			</div>
			
			
			
	</div>
	
	
	

	


</body>
</html>
