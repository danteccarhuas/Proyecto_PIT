package com.colmenares.san.jose.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import nl.captcha.Captcha;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.colmenares.san.jose.beans.EnlaceBean;
import com.colmenares.san.jose.beans.TrabajadorBean;
import com.colmenares.san.jose.beans.UsuarioBean;
import com.colmenares.san.jose.service.UsuarioService;
import com.colmenares.san.jose.service.UsuarioServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;
import com.opensymphony.xwork2.validator.annotations.ValidatorType;

@ParentPackage(value = "dawi")
@InterceptorRef("jsonValidationWorkflowStack")
@Validations(requiredStrings = {
		@RequiredStringValidator(fieldName = "loginuser", type = ValidatorType.FIELD, message = "El usuario es requerido"),
		@RequiredStringValidator(fieldName = "loginpassword", type = ValidatorType.FIELD, message = "La clave es requerida") 

})
public class LoginAction extends ActionSupport {
	private static final long serialVersionUID = 7968544374444173511L;
	private static final Log log = LogFactory.getLog(LoginAction.class);
	
	private UsuarioService service = new UsuarioServiceImpl();
	
	private Map<String, Object> session = (Map<String, Object>)ActionContext.getContext().getSession();
	private HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(org.apache.struts2.StrutsStatics.HTTP_REQUEST);
	
	private String loginuser;
	private String loginpassword;
	private String mensaje;
	private String answer;


	@Action(value = "/login", results = { @Result(location = "t_intranet", name = "success", type = "tiles"),
										  @Result(location = "t_login", name = "login", type = "tiles")})
	public String login() throws Exception {
		log.info("En LoginAction");

		UsuarioBean operarioBean = new UsuarioBean();
		operarioBean.setLogin(loginuser);
		operarioBean.setPassword(loginpassword);
		
		HttpSession session1 = request.getSession();
	    Captcha captcha = (Captcha) session1.getAttribute(Captcha.NAME);
	       
		UsuarioBean operarioBeanSalida  = service.login(operarioBean);
		TrabajadorBean trabajador= service.traeTrabajador(operarioBeanSalida.getIdUsuario());
		
//		if(!captcha.isCorrect(answer)){
//			mensaje ="El codigo capcha es incorrecto";
//			return  "login";
//		}else 
			
			if(operarioBeanSalida== null ){
			mensaje ="El usuario no existe";
			return  "login";
		}else{
			List<EnlaceBean> enlaces = service.traerEnlacesDeUsuario(operarioBeanSalida.getIdUsuario());
			session.put("objUsuario",operarioBeanSalida);
			session.put("objTrabajador", trabajador);
			session.put("objUsuarioMenus",enlaces);
			return  "success";
		}


	    
	}

	

	public String getLoginuser() {
		return loginuser;
	}

	public void setLoginuser(String loginuser) {
		this.loginuser = loginuser;
	}
  
	public String getLoginpassword() {
		return loginpassword;
	}

	public void setLoginpassword(String loginpassword) {
		this.loginpassword = loginpassword;
	}



	public String getMensaje() {
		return mensaje;
	}



	public String getAnswer() {
		return answer;
	}



	public void setAnswer(String answer) {
		this.answer = answer;
	}



	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}
}
