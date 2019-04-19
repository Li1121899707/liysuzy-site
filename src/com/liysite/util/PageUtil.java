package com.liysite.util;

import java.util.List;

public class PageUtil<T> {

	private int pageNumber;// �ܼ�¼��
	private int pageCount;// ��ҳ��
	private int pageIndex;// ��ǰҳ
	private int pageSize;// ÿҳ��С
	private List<T> list;// ��ǰҳ������

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

}
