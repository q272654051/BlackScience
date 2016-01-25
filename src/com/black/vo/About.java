package com.black.vo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "about", catalog = "blackscience")
public class About implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private String aboutId = "";        //ID
	private String name = "";          //名字
	private String content = "";       //内容
	private byte[] img;                //图片
	private Integer status = 0;        //状态
	private Date date;                 //时间
	private String remark = "";        //备注
	
	
	// Constructors

	/** default constructor */
	public About() {
	}

	/** full constructor */
	public About(String aboutId, String name, String pwd, String content, byte[] img, 
			String remark, Integer status, Date date) {
		this.aboutId = aboutId;
		this.name = name;
		this.content = content;
		this.img = img;
		this.date = date;
		this.remark = remark;
		this.status = status;
	}

	// Property accessors
	@Id
	@Column(name = "aboutid", length = 50, unique = true, nullable = false)
	public String getAboutId() {
		return aboutId;
	}

	public void setAboutId(String aboutId) {
		this.aboutId = aboutId;
	}

	@Column(name = "name", length = 255)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "content", length = 4000)
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name = "img",columnDefinition = "BLOB",nullable=true)
	public byte[] getImg() {
		return img;
	}

	public void setImg(byte[] img) {
		this.img = img;
	}

	@Column(name = "date", length = 19)
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Column(name = "status")
	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Column(name = "remark", length = 255)
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	
}