/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package database.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import resources.PageController;

/** 
 * MyEclipse Struts
 * Creation date: 04-01-2013
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 */
public class AdvancedQueryAction extends Action {
	/*
	 * Generated Methods
	 */

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
		ArrayList books=(ArrayList) request.getSession().getAttribute("Books");
		String str=request.getParameter("PageIndex");
		if(str==null){
			str="1";
		}
		int currentPageIndex=Integer.parseInt(str);
		PageController pc=(PageController)request.getAttribute("pc");
		if(pc==null){
			pc=new PageController(10);
			pc.setBigList(books);
			request.setAttribute("pc", pc);
			request.setAttribute("advancedSearch", 1);	
		}
		pc.setCurrentPageIndex(currentPageIndex);
		return new ActionForward("/advancedSearchResult.jsp");
	}
}