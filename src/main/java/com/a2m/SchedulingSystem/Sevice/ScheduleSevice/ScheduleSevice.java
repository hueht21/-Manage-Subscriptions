package com.a2m.SchedulingSystem.Sevice.ScheduleSevice;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.a2m.SchedulingSystem.Entity.Register;

@Service
public class ScheduleSevice {

	@Autowired
	ScheduleRepository scheduleRepository;

	public Iterable<Register> getListSchedu() {
		Iterable<Register> list = scheduleRepository.findAll();
		return list;
	}

	public void insert(Register register) {
		scheduleRepository.save(register);
	}

	// cai nay la của admin
	public List<Register> getListSchedue() {

		List<Register> listSchedue = scheduleRepository.findAllSchedue();
		return listSchedue;
	}

	// cai nay la của admin lay ra thong tin lịch mà đã có thợ sửa
	public List<Register> getListSchedueByEmployee() {

		List<Register> listSchedue = scheduleRepository.findSchedueByEmployee();
		return listSchedue;
	}

	// cai nay của khach hang
	public List<Register> getListSchedueUser() {

		List<Register> listSchedue = scheduleRepository.findByIdUser();
		return listSchedue;
	}

	public void deleteSchue(Long id) {
		scheduleRepository.deleteById(id);
	}

	public Register getSchedule(Long id) {

		Optional<Register> register = scheduleRepository.findById(id);
		return register.get();
	}

	public void updateSchedule(Register register) {
		scheduleRepository.save(register);
	}

	// lay ra danh sach tat cả lich dang ky

	public Iterable<Register> getListAll() {

		return scheduleRepository.findAll();
	}
	// tim kiem thông tin khách hàng

	public Iterable<Register> getListByName(String name) {
		return scheduleRepository.findByNameCustomer(name);
	}
//	public Register getScheduleById(Long id)
//	{
//		
//		Optional<Register> reOptional = scheduleRepository.findById(id);
//		return reOptional.get();
//	}

}
