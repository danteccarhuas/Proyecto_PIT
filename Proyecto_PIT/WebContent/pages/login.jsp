<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>





<s:form id="idLogin" action="login" method="POST">

		<div id="idLoginCentrar">
			<label id="idUsuario" >Usuario<br><span id="loginuserError" style="color:red;font-size: 12px;font-weight: bold;"></span> </label>
		
			<s:textfield id="idTextUsuario" name="loginuser" />
		
			<label id="idClave" >Clave <br><span id="loginpasswordError" style="color:red;font-size: 12px;font-weight: bold;"></span></label>
			<s:password id="idTextClave" name="loginpassword" />
			
			<sj:submit id="idLoginSubmit"  value="Ingresar" button="true" 
					   validateFunction="customeValidation" onBeforeTopics="removeErrors" 
					   onSuccessTopics="removeErrors" indicator="indicator"  validate="true" />
		
			<div class="resultadoLogin" align="left" id="resultadoIngreseLogin" style="font-size: 12px;">
				<font color="red" size="2" style="font-weight: bold;"><s:property value="mensaje" /></font>
			</div>
			
			<img src="simpleImg.jpg" border="0" id="idImgCapcha">
			<s:textfield id="idCode" label="Code" name="answer"  maxlength="10"/>
		</div>

</s:form>
<img id="indicator" src="images/indicator.gif" alt="Loading..." style="display:none"/> 


