package com.myspring.arumjigi.board.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("pagingVO")
public class PagingVO {
	private int depth;
	private int articleNO;
	private int parentNO;
	private String title;
	private String content;
	private String imageFileName;
	private String id;
	private Date  writeDate;
	private int recNum; // 하나추가
	
	
	public int getRecNum() {
		return recNum;
	}

	public void setRecNum(int recNum) {
		this.recNum = recNum;
	}

	public PagingVO() {
		//System.out.println("ArticleVO 생성자");
	}

	public int getArticleNO() {
		return articleNO;
	}

	public void setArticleNO(int articleNO) {
		this.articleNO = articleNO;
	}

	public int getParentNO() {
		return parentNO;
	}

	public void setParentNO(int parentNO) {
		this.parentNO = parentNO;
	}




	public int getDepth() {
		return depth;
	}

	public void setDepth(int depth) {
		this.depth = depth;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		try {
			if(imageFileName!= null && imageFileName.length()!=0) {
				this.imageFileName = URLEncoder.encode(imageFileName,"UTF-8");
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	@Override
	public String toString() {
		return "ListArticleVO [depth=" + depth + ", articleNO=" + articleNO + ", parentNO=" + parentNO + ", title="
				+ title + ", content=" + content + ", imageFileName=" + imageFileName + ", id=" + id + ", writeDate="
				+ writeDate + ", recNum=" + recNum + "]";
	}

	

	
	
	
}
