package com.spring.dao;

import java.util.List;

import com.spring.entity.Applicant;


 
public interface ApplicantDAO {
 
	public void add(Applicant p);
	public void update(Applicant p);
	public List<Applicant> listApplicant();
	public Applicant getApplicantById(int id);
	public void delete(int id);
    
}
