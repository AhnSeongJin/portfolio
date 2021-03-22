package com.myspring.arumjigi.member.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("memberVO")
public class MemberVO {
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String domain;
	private String phone;
	private String postcode;
	private String address;
	private String detailAddress;
	private String extraAddress;
	private String emailsts;
	private String joinDate;
	private String use;

	public MemberVO() {
		
	}

	public MemberVO(String id, String pwd, String name, String email, String domain, String phone, String postcode,
			String address, String detailAddress, String extraAddress, String emailsts, String joinDate, String use) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.domain = domain;
		this.phone = phone;
		this.postcode = postcode;
		this.address = address;
		this.detailAddress = detailAddress;
		this.extraAddress = extraAddress;
		this.emailsts = emailsts;
		this.joinDate = joinDate;
		this.use = use;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDomain() {
		return domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public String getExtraAddress() {
		return extraAddress;
	}

	public void setExtraAddress(String extraAddress) {
		this.extraAddress = extraAddress;
	}

	public String getEmailsts() {
		return emailsts;
	}

	public void setEmailsts(String emailsts) {
		this.emailsts = emailsts;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	public String getUse() {
		return use;
	}

	public void setUse(String use) {
		this.use = use;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", domain=" + domain
				+ ", phone=" + phone + ", postcode=" + postcode + ", address=" + address + ", detailAddress="
				+ detailAddress + ", extraAddress=" + extraAddress + ", emailsts=" + emailsts + ", joinDate=" + joinDate
				+ ", use=" + use + "]";
	}

	

	

}
