<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>


<ul>

	<s:iterator value="#session.objUsuarioMenus" >
		<li>
			<a href="${pageContext.request.contextPath}/<s:property value="ruta"/>">
				<s:property value="descripcion"/>
			</a>
		</li>
	</s:iterator>
		<li>
			<a href="${pageContext.request.contextPath}/logout">
				Salir
			</a>
		</li>
</ul>