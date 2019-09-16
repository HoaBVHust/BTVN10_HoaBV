package vn.topica.itlab4.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Student {
	static private int idGrow = 0;
	private int iD;
	private String name;
	private Date birthday;
	private String gender;
	private Date dayStartTerm;
	
	public int getiD() {
		return iD;
	}
	public Date getBirthday() {
		return birthday;
	}
	public Date getDayStartTerm() {
		return dayStartTerm;
	}
	public String getGender() {
		return gender;
	}
	public String getName() {
		return name;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public void setDayStartTerm(Date dayStartTerm) {
		this.dayStartTerm = dayStartTerm;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setiD(int iD) {
		this.iD = iD;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
	
	public Student() {
		iD=idGrow++;		
	}
	public Student(String name,String birthday,String gender,String dayStartTerm) {
		iD=idGrow++;
		this.name=name;
		try {
			this.birthday=simpleDateFormat.parse(birthday);
		} catch (ParseException e) {
			this.birthday=new Date();
			e.printStackTrace();
		}
		this.gender=gender;
		try {
			this.dayStartTerm=simpleDateFormat.parse(dayStartTerm);
		} catch (ParseException e) {
			this.dayStartTerm=new Date();
			e.printStackTrace();
		}
	}
}
