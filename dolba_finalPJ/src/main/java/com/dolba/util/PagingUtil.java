package com.dolba.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dolba.dto.SitterDTO;

public class PagingUtil {
	
	private Map<Integer, List<SitterDTO>> map = new HashMap<>();
	private List<SitterDTO> list;
	private int curPage;
	
	private int startPage; //pagenav안의 시작페이지
	private int endPage; //pagenav안의 끝페이지
	
	private int totalCount; //전체 게시물 수
	
	private int totalPage; //전체 페이징 수
	
	private static int pageWidth = 5; //pagenav에 보여줄 페이지 숫자 
	
	public PagingUtil(List<SitterDTO> sitterList,int curPage) {
		this.list = sitterList;
		if(curPage > 0 ) {
			this.curPage = curPage-1;
		}
		this.totalCount = sitterList.size();
		
		/*
		 * 전체 게시물에 
		 */
		for(int i=0;i<(sitterList.size()/pageWidth + 1) ;i++) {
			List<SitterDTO> plist = new ArrayList<>(); //각 페이지당 보여지는 게시물 리스트
			for(int j=0;j<pageWidth;j++) {
				if(i*pageWidth+j < totalCount) {
					plist.add(sitterList.get(i*pageWidth+j));
				}
			}
			map.put(i, plist);
		}
		if(totalCount%pageWidth == 0) {
			this.totalPage=map.size()-1;
		}else {
			this.totalPage=map.size();
		}
		if(curPage > this.totalPage) {
			this.curPage=this.totalPage-1;
		}
		this.startPage=(this.curPage/pageWidth)*pageWidth+1;
		this.endPage=this.startPage+pageWidth-1;
	}
	
	public List<SitterDTO> getCurList(int curPage){
		return map.get(curPage);
	}

	public Map<Integer, List<SitterDTO>> getMap() {
		return map;
	}

	public void setMap(Map<Integer, List<SitterDTO>> map) {
		this.map = map;
	}

	public List<SitterDTO> getList() {
		return list;
	}

	public void setList(List<SitterDTO> list) {
		this.list = list;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public static int getPageWidth() {
		return pageWidth;
	}

	public static void setPageWidth(int pageWidth) {
		PagingUtil.pageWidth = pageWidth;
	}
	
	
}
