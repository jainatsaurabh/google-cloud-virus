package com.example.virus.repo;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.example.virus.entity.LastUp;

public interface LastRepo extends JpaRepository<LastUp, Integer> {
	@Modifying
	@Transactional
	@Query(value = "update last_up set dt=?1 where id=1",nativeQuery = true)
	public void setLast(String date);

	@Query(value = "select dt from last_up", nativeQuery = true)
	public String getLastUpdate();
}
