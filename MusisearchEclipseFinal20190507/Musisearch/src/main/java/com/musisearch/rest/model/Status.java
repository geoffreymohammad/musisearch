package com.musisearch.rest.model;

import java.io.Serializable;
import java.util.Date;

import org.codehaus.jackson.annotate.JsonAutoDetect;

import com.fasterxml.jackson.annotation.JsonFormat;

@JsonAutoDetect
public class Status implements Serializable{
	private static final long serialVersionUID = 1L;
	int id;
	int musisi;
	String musisiName;
	String email;
	String telp;
	@JsonFormat
    (shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd", timezone="Asia/Jakarta")
	Date tglLahir;
	String initialStatusName;
	int initialStatus;
	String nama;
	int createdBy;
	
	@JsonFormat
    (shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone="Asia/Jakarta")
	Date createdDate;
	
	String createdByName;
	int modifiedBy;
	
	@JsonFormat
    (shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone="Asia/Jakarta")
	Date modifiedDate;
	
	String modifiedByName;
	
	String modelName = "Status";
	
	int status;
	int totalRow;
	
	public Status() {
		super();
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getMusisi() {
		return musisi;
	}

	public void setMusisi(int musisi) {
		this.musisi = musisi;
	}

	public String getMusisiName() {
		return musisiName;
	}

	public void setMusisiName(String musisiName) {
		this.musisiName = musisiName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelp() {
		return telp;
	}

	public void setTelp(String telp) {
		this.telp = telp;
	}

	public Date getTglLahir() {
		return tglLahir;
	}

	public void setTglLahir(Date tglLahir) {
		this.tglLahir = tglLahir;
	}

	public String getInitialStatusName() {
		return initialStatusName;
	}

	public void setInitialStatusName(String initialStatusName) {
		this.initialStatusName = initialStatusName;
	}

	public int getInitialStatus() {
		return initialStatus;
	}

	public void setInitialStatus(int initialStatus) {
		this.initialStatus = initialStatus;
	}

	public String getModelName() {
		return modelName;
	}

	public void setModelName(String modelName) {
		this.modelName = modelName;
	}

	public String getNama() {
		return nama;
	}
	public void setNama(String nama) {
		this.nama = nama;
	}
	
	public int getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	
	public void setCreatedDate(Date createdDate) {
		this.createdDate =createdDate;
	}
	public int getModifiedBy() {
		return modifiedBy;
	}
	public void setModifiedBy(int modifiedBy) {
		this.modifiedBy = modifiedBy;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getCreatedByName() {
		return createdByName;
	}

	public void setCreatedByName(String createdByName) {
		this.createdByName = createdByName;
	}

	public String getModifiedByName() {
		return modifiedByName;
	}

	public void setModifiedByName(String modifiedByName) {
		this.modifiedByName = modifiedByName;
	}
	
	
}
