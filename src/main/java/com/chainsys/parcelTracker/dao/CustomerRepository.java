package com.chainsys.parcelTracker.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.parcelTracker.pojo.Customer;

@Repository
public interface CustomerRepository  extends JpaRepository<Customer, Integer>{
//	
	@Query(value="select customer_id, name, phone_number, email from CUSTOMER_table where customer_id=?1", nativeQuery = true)
	Customer findBySelectedId(int id);
	
	Customer findById(int id);

	Customer save(Customer dr); 

	void deleteById(int id);

	List<Customer> findAll();
	
	
}

