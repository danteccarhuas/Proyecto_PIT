<?xml version="1.0" encoding="utf-8"?>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
<title><s:text  name="global.titulo" /></title>	
<sj:head locale="es" jqueryui="true" jquerytheme="south-street"/>
<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/screen.css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/struts/utils.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/struts/xhtml/validation.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui-timepicker-es.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="keywords" content="struts2, jquery, jquery-ui, plugin, showcase, jqgrid" />
<meta http-equiv="description" content="A Showcase for the Struts2 jQuery Plugin" />

<script type="text/javascript">
var x=window.history.length; 
if (window.history[x]!=window.location) 
{ 
    window.history.forward(); 
} 
</script>	

<script type="text/javascript">

		function validarTexto(e) { // 1
		    tecla = (document.all) ? e.keyCode : e.which; // 2
		    if (tecla==8) return true; // 3
		    patron =/[A-Za-z\s0123456789]/; // 4
		    te = String.fromCharCode(tecla); // 5
		    return patron.test(te); // 6
		}
		function validarNumerosYLetrasSinEspacionBlanco(e) { // 1
		    tecla = (document.all) ? e.keyCode : e.which; // 2
		    if (tecla==8) return true; // 3
		    patron =/[A-Za-z0123456789]/; // 4
		    te = String.fromCharCode(tecla); // 5
		    return patron.test(te); // 6
		}		
		function validarNumerosReales(e) { // 1
		    tecla = (document.all) ? e.keyCode : e.which; // 2
		    if (tecla==8) return true; // 3
		    patron = /[0123456789.]/; // Solo acepta números
		    te = String.fromCharCode(tecla); // 5
		    return patron.test(te); // 6
		}	
		function validarSoloNumerosEnteros(e) { // 1
		    tecla = (document.all) ? e.keyCode : e.which; // 2
		    if (tecla==8) return true; // 3
		    patron = /\d/; // Solo acepta números
		    te = String.fromCharCode(tecla); // 5
		    return patron.test(te); // 6
		}

			
	</script>		
	<script type="text/javascript">
	
			$(document).ready( function() {
				$.subscribe('removeErrors', function(event,data) {
					$('.errorLabel').html('').removeClass('errorLabel');
					$('#formerrors').html('');
				});
			});	
			
			function customeValidation(form, errors) {
				
				//List for errors
				var list = $('#formerrors');
				
				//Handle non field errors 
				if (errors.errors) {
					$.each(errors.errors, function(index, value) { 
						list.append(''+value+'\n');
					});
				}
				
				//Handle field errors 
				if (errors.fieldErrors) {
					$.each(errors.fieldErrors, function(index, value) { 
						var elem = $('#'+index+'Error');
						if(elem)
						{
							elem.html(value[0]);
							elem.addClass('errorLabel');
						}
					});
				}
			}
		  
	</script>				
</head>
<body>
	<div id="idPrincipal">
			<div id="idCabecera">
				<tiles:insertAttribute	name="cabecera" />
			</div>
			<div id="idCuerpo">
				<div id="idMenu"><tiles:insertAttribute name="menu" /></div>
				<div id="idCentralConMenu"><tiles:insertAttribute name="central" /></div>
			</div>
	</div>

</body>
</html>
