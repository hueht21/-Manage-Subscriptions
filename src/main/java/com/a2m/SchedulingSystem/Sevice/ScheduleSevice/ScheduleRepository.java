package com.a2m.SchedulingSystem.Sevice.ScheduleSevice;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.a2m.SchedulingSystem.Entity.Register;

public interface ScheduleRepository extends CrudRepository<Register, Long> {

	/// lay ra danh sách lịch đăng đăng ký
		@Query(value = " SELECT * FROM schedule_fix WHERE ID_CUSTOMER = 1 AND `STATUS`= 0 OR `STATUS`= 1 " , nativeQuery = true)
		List<Register> findByIdUser();
		
		
		// lay ra danh sach đang dang kí (admin)
		@Query(value = " SELECT * FROM schedule_fix WHERE `STATUS`= 0" , nativeQuery = true)
		List<Register> findAllSchedue();
}
