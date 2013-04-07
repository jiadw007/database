/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package database.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dao.IEmployeeDAO;


/** 
 * MyEclipse Struts
 * Creation date: 03-28-2013
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 */
public class DeleteUserAction extends Action {
	/*
	 * Generated Methods
	 */
    private IEmployeeDAO edao;
    

	public IEmployeeDAO getEdao() {
		return edao;
	}





	public void setEdao(IEmployeeDAO edao) {
		this.edao = edao;
	}





	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String str=(String)request.getParameter("USER");
		edao.deleteUserByUsername(str);
		request.setAttribute("success", 1);
		return new ActionForward("/queryUser.do");
	}
}