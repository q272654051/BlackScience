package com.black.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user", catalog = "blackscience")
public class User implements java.io.Serializable {

	// Fields

	private String userId = "";        //用户ID
	private String userName = "";      //用户名
	private String pwd = "";           //密码
	private String name = "";          //名字
	private String phone = "";         //电话
	private String email = "";         //邮箱
	private Integer status = 0;        //状态
	private Integer vip = 0;           //等级
	private Integer gender;            //性别
	private String remark = "";        //备注
	
	
	// Constructors

	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(String userId, String userName, String pwd, String name, String phone, 
			String email, String remark, Integer status, Integer vip, Integer gender) {
		this.userId = userId;
		this.userName = userName;
		this.pwd = pwd;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.remark = remark;
		this.status = status;
		this.vip = vip;
		this.gender = gender;
	}

	// Property accessors
	@Id
	@Column(name = "userid", length = 50, unique = true, nullable = false)
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	@Column(name = "userName", length = 50)
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "pwd", length = 50)
	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	@Column(name = "name", length = 50)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "phone", length = 50)
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "email", length = 50)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "remark", length = 50)
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	@Column(name = "status")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	@Column(name = "vip")
	public Integer getVip() {
		return this.vip;
	}
	
	public void setVip(Integer vip) {
		this.vip = vip;
	}

	@Column(name = "gender")
	public Integer getGender() {
		return this.gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}
}