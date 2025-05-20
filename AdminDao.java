package com.dao;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.criterion.Restrictions;

import com.dto.AdminInfo;
import com.dto.AppointmentInfo;
import com.dto.Doctor;
import com.dto.EHRInfo;
import com.dto.UserInfo;

import java.util.ArrayList;
import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;

public class AdminDao {

	public int checkAdmin(String name, String pass) {
		int i=0;
		SessionFactory sf= new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Criteria ct=ss.createCriteria(AdminInfo.class);
		ct.add(Restrictions.eq("aName",name));
		ct.add(Restrictions.eq("password",pass));
		List li=ct.list() ;
		if(!li.isEmpty()) {
			i=1;
		}
		return i;
	}
	public int insertDoctor(Doctor dd) {
		int i=0;
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Transaction tt=ss.beginTransaction();
		Object oo=ss.save(dd);
		if(oo!=null)
			i=1;
		tt.commit();
		return i;
	}

	public int checkDoctor(String name, String pass) {
		int i=0;
		SessionFactory sf= new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Criteria ct=ss.createCriteria(Doctor.class);
		ct.add(Restrictions.eq("user",name));
		ct.add(Restrictions.eq("password",pass));
		List li=ct.list();
		if(!li.isEmpty()) {
			i=1;
		}
		return i;
	}

	public int insertPatient(UserInfo ui) {
		int i=0;
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Transaction tt=ss.beginTransaction();
		Object oo=ss.save(ui);
		tt.commit();
		if(oo!=null)
			i=1;
		return i;
	}

	public int checkPatient(String user, String password) {
		int i=0;
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Criteria ct=ss.createCriteria(UserInfo.class);
		ct.add(Restrictions.eq("user",user));
		ct.add(Restrictions.eq("password",password));
		List li=ct.list();
		if(!li.isEmpty())
			i=1;
		return i;
	}



	public int insertAppointInfo(AppointmentInfo ai) {
		int i=0;
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Transaction tt=ss.beginTransaction();
		Object oo=ss.save(ai);
		if(oo!=null)
			i=1;
		tt.commit();
		return i;
	}

	public int uploadEHR(EHRInfo ehrInfo) {
		int i=0;
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Transaction tt=ss.beginTransaction();
		Object oo=ss.save(ehrInfo);
		tt.commit();;
		if(oo!=null)
			i=1;
		return i;
	}

	public ArrayList<EHRInfo> getRecord() {
		ArrayList<EHRInfo> li=new ArrayList<EHRInfo>();
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Criteria ct=ss.createCriteria(EHRInfo.class);
		li=(ArrayList<EHRInfo>) ct.list();
		return li;
	}

	public ArrayList<Doctor> getAllDoctor() {
		ArrayList<Doctor> li=new ArrayList<Doctor>();
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Criteria ct=ss.createCriteria(Doctor.class);
		li=(ArrayList<Doctor>)ct.list();
		return li;
	}

	public ArrayList<UserInfo> getAllPatient() {
		ArrayList<UserInfo> li=new ArrayList<UserInfo>();
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Criteria ct=ss.createCriteria(UserInfo.class);
		li=(ArrayList<UserInfo>)ct.list();
		return li;
	}

	public AdminInfo getAdmin(String user) {
		AdminInfo ad=new AdminInfo();
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Criteria ct=ss.createCriteria(AdminInfo.class);
		ct.add(Restrictions.eq("aName", user));
		List li=ct.list();
		if(!li.isEmpty())
			ad=(AdminInfo)li.get(0);
		return ad;
	}

	public Doctor getAnDoctor(String user) {
		Doctor ad=new Doctor();
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Criteria ct=ss.createCriteria(Doctor.class);
		ct.add(Restrictions.eq("user", user));
		List li=ct.list();
		if(!li.isEmpty())
			ad=(Doctor)li.get(0);
		return ad;
	}

	public UserInfo getAnPatient(String user) {
		UserInfo ad=new UserInfo();
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Criteria ct=ss.createCriteria(UserInfo.class);
		ct.add(Restrictions.eq("user", user));
		List li=ct.list();
		if(!li.isEmpty())
			ad=(UserInfo)li.get(0);
		return ad;
	}

	public int updateAdmin(AdminInfo ad) {
		int i=0;
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Transaction tt=ss.beginTransaction();
		ss.update(ad);
		tt.commit();
		i=1;
		return i;
	}

	public int deletePatient(String user) {
		int i=0;
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Transaction tt=ss.beginTransaction();
		UserInfo ui=new UserInfo();
		ui.setUser(user);
		ss.delete(ui);
		tt.commit();
		i=1;
		return i;
	}

	public int deleteDoctor(String user) {
		int i=0;
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Transaction tt=ss.beginTransaction();
		Doctor ui=new Doctor();
		ui.setUser(user);
		ss.delete(ui);
		tt.commit();
		i=1;
		return i;
	}

	public int updatePatient(UserInfo ui) {
		int i=0;
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Transaction tt=ss.beginTransaction();
		ss.update(ui);
		tt.commit();
		i=1;
		return i;
	}

	public int updateDoctor(Doctor dd) {
		int i=0;
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Transaction tt=ss.beginTransaction();
		ss.update(dd);
		tt.commit();
		i=1;
		return i;
	}

	public int deleteEHR(int id) {
		int i=0;
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Transaction tt=ss.beginTransaction();
		EHRInfo ui=new EHRInfo();
		ui.setSno(id);;
		ss.delete(ui);
		tt.commit();
		i=1;
		return i;
	}
	public AppointmentInfo getAnPatientInfo(String user) {
		AppointmentInfo ad=new AppointmentInfo();
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Criteria ct=ss.createCriteria(AppointmentInfo.class);
		ct.add(Restrictions.eq("user", user));
		List li=ct.list();
		if(!li.isEmpty())
			ad=(AppointmentInfo)li.get(0);
		return ad;
	}
	
	
	public ArrayList<AppointmentInfo> getAppointments() {
		ArrayList<AppointmentInfo> list=new ArrayList<AppointmentInfo>();
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Criteria ct=ss.createCriteria(AppointmentInfo.class);
		list=(ArrayList<AppointmentInfo>)ct.list();
		return list;
	}
	

	public int deleteAppointments(int id) {
		int i=0;
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Transaction tt=ss.beginTransaction();
		AppointmentInfo ui=new AppointmentInfo();
		ui.setId(id);
		ss.delete(ui);
		tt.commit();
		i=1;
		return i;
	}
	public int approveAppointment(AppointmentInfo ai,String user) {
		int i=0;
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		Transaction tt=ss.beginTransaction();
		ai.setUser(user);
		System.out.println(ai.getUser());
		ss.update(ai);
//		String hql="update appointments set state=:a where id=:b";
//		Query q=ss.createQuery(hql);
//		q.setString("a", ai.getState());
//		q.setInteger("b", ai.getId());
//		i=q.executeUpdate();
		tt.commit();
		i=1;
		return i;
	}



}
