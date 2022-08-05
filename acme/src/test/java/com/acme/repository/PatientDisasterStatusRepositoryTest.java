package com.acme.repository;

import java.time.ZonedDateTime;
import java.util.Date;
import java.util.List;

import org.junit.Assert;
import org.junit.jupiter.api.MethodOrderer.OrderAnnotation;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;

import com.acme.AcmeApplicationTests;
import com.acme.model.Disaster;
import com.acme.model.Patient;
import com.acme.model.PatientDisasterStatus;
import com.acme.model.PatientStatus;

@TestMethodOrder(OrderAnnotation.class)
public class PatientDisasterStatusRepositoryTest extends AcmeApplicationTests {

	@Autowired
	PatientRepository patientRepository;
	
	@Autowired
	DisasterRepository disasterRepository;
	
	@Autowired
	PatientStatusRepository patientStatusRepository;
	
	@Autowired
	PatientDisasterStatusRepository patientDisasterStatusRepository;

	
	//@Order(1)  
	//@Ignore
	//@Test
	//@Transactional
	public void testSave() {
		//patientDisasterStatusRepository
		
		PatientStatus patientStatus = patientStatusRepository.findById(1L).orElse(null);
		Disaster disaster = disasterRepository.findById(100L).orElse(null);
		Patient patient = patientRepository.findById(1L).orElse(null);
		PatientDisasterStatus patientDisasterStatus =  new PatientDisasterStatus();
		
		patientDisasterStatus.setDate(Date.from(ZonedDateTime.now().toInstant()));
		
		patientDisasterStatus.setDisaster(disaster);
		patientDisasterStatus.setPatient(patient);
		patientDisasterStatus.setPatientStatus(patientStatus);
		
		patientDisasterStatus = patientDisasterStatusRepository.save(patientDisasterStatus);
		patientDisasterStatusRepository.flush();
		Assert.assertNotNull(patientDisasterStatus);
		Assert.assertNotNull(patientDisasterStatus.getId());
		
	}
	
	@Order(2)  
	@Test
	public void testGet() {
		List<PatientDisasterStatus> patientDisasterStatusList = patientDisasterStatusRepository.findAll();
		Assert.assertNotNull(patientDisasterStatusList);
		Assert.assertFalse("empty", patientDisasterStatusList.isEmpty());
		PatientDisasterStatus patientDisasterStatus = patientDisasterStatusList.get(0);
		Assert.assertEquals(5L, patientDisasterStatus.getId().longValue());
		Assert.assertEquals(1659639772000L, patientDisasterStatus.getDate().getTime());
		
		
		
		Assert.assertNotNull("patient null", patientDisasterStatus.getPatient());
		Assert.assertNotNull("disaster null", patientDisasterStatus.getDisaster());
		Assert.assertNotNull("patientStatus null", patientDisasterStatus.getPatientStatus());
		
	}
	@Test
	public void testGtByFacilityIdAndPatientIdInFacility() {
		List<PatientDisasterStatus> patientDisasterStatusList = patientDisasterStatusRepository.findByFacilityAndPatientFacilityId("npi1234", "patient-facility-001");
		Assert.assertNotNull(patientDisasterStatusList);
		Assert.assertFalse("empty", patientDisasterStatusList.isEmpty());
		PatientDisasterStatus patientDisasterStatus = patientDisasterStatusList.get(0);
		Assert.assertEquals(5L, patientDisasterStatus.getId().longValue());
	}
	
}
