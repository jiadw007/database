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

import po.Book;
import resources.PageController;

import dao.IUserDao;
import database.form.AdvancedSearchForm;

/** 
 * MyEclipse Struts
 * Creation date: 04-01-2013
 * 
 * XDoclet definition:
 * @struts.action path="/advancedSearch" name="advancedSearchForm" input="/advancedSearch.jsp" scope="request" validate="true"
 */
public class AdvancedSearchAction extends Action {
	/*
	 * Generated Methods
	 */
    private IUserDao udao;
    

	public IUserDao getUdao() {
		return udao;
	}

	public void setUdao(IUserDao udao) {
		this.udao = udao;
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
		AdvancedSearchForm advancedSearchForm = (AdvancedSearchForm) form;// TODO Auto-generated method stub
		ArrayList Books=new ArrayList();
		String isbn=advancedSearchForm.getIsbn();
		String author=advancedSearchForm.getAuthor();
		String title=advancedSearchForm.getTitle();
		String time=advancedSearchForm.getTime();
		String year=advancedSearchForm.getYear();
		if(year != ""){
			if(time.equals("After")){
				year=">'"+year+"'";
			}
			if(time.equals("Before")){
				year="<'"+year+"'";
			}
			else year="";
		}
        Books=udao.advancedsearchBook(isbn, author, title, year, time);
        request.getSession().setAttribute("Books", Books);
        if(Books.size()>=1){
        	request.setAttribute("advancedSearch", 1);
            String str=request.getParameter("PageIndex");
    		if(str==null){
    			str="1";
    		}
    		int currentPageIndex=Integer.parseInt(str);
    		PageController pc=(PageController)request.getAttribute("pc");
    		if(pc==null){
    			pc=new PageController(10);
    			pc.setBigList(Books);
    			request.setAttribute("pc", pc);
    				
    		}
    		pc.setCurrentPageIndex(currentPageIndex);
    		
        }else{
        	request.setAttribute("advancedSearch", 0);
        }

        return new ActionForward("/advancedSearchResult.jsp");
	}

}