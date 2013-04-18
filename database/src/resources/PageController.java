package resources;


import java.util.ArrayList;

//pagecontroller
/*
 * 
 * */
public class PageController {
	private ArrayList bigList;                   //big list, 
	private int currentPageIndex=1;              //current page index
	private int countPerpage=100;                  // count per page
	private ArrayList smallList;                  //small list
	private int pageCount;                       //page count
	private int recordCount;                     //record count
	private int previousPageIndex;               //previous page 
	private int nextPageIndex;                   //next page 
	private boolean firstPage;                   //first page
	private boolean lastPage;                    //last page
	
	
	public PageController() {
		super();
	}
	public PageController(int countPerpage) {
		super();
		this.countPerpage = countPerpage;
	}
	public boolean isFirstPage() {
		return firstPage;
	}
	public void setFirstPage(boolean firstPage) {
		this.firstPage = firstPage;
	}
	public boolean isLastPage() {
		return lastPage;
	}
	public void setLastPage(boolean lastPage) {
		this.lastPage = lastPage;
	}
	public int getPreviousPageIndex() {
		return previousPageIndex;
	}
	public void setPreviousPageIndex(int previousPageIndex) {
		this.previousPageIndex = previousPageIndex;
	}
	public int getNextPageIndex() {
		return nextPageIndex;
	}
	public void setNextPageIndex(int nextPageIndex) {
		this.nextPageIndex = nextPageIndex;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getRecordCount() {
		return recordCount;
	}
	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}
	public ArrayList getBigList() {
		return bigList;
	}
	public void setBigList(ArrayList bigList) {
		this.bigList = bigList;
		//count record in big list
		this.recordCount=bigList.size();
		//count page Index
		if(recordCount%countPerpage==0){
			pageCount=recordCount/countPerpage;
		}else{
			pageCount=recordCount/countPerpage+1;
		}		
	}
	public int getCurrentPageIndex() {
		return currentPageIndex;
	}
	public void setCurrentPageIndex(int currentPageIndex) {  //每当页数改变，都会调用
		
		this.currentPageIndex = currentPageIndex;
		//previous page and next page
		previousPageIndex=currentPageIndex-1;
		nextPageIndex=currentPageIndex+1;
		//first page, last page
		if(currentPageIndex==1){
			firstPage=true;
		}
		else{
			firstPage=false;
		}
		if(currentPageIndex==pageCount){
			lastPage=true;
		}else{
			lastPage=false;
		}
		//筛选工作
		smallList=new ArrayList();
		for(int i=(currentPageIndex-1)*countPerpage;i<currentPageIndex*countPerpage&&i<recordCount;i++){
			smallList.add(bigList.get(i));
		}	
	}
	public int getCountPerpage() {
		return countPerpage;
	}
	public void setCountPerpage(int countPerpage) { 
		this.countPerpage = countPerpage;
	}
	public ArrayList getSmallList() {
		return smallList;
	}
	public void setSmallList(ArrayList smallList) {
		this.smallList = smallList;
	}
	

}
