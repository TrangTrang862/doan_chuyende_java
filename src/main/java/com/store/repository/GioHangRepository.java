package com.store.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.store.entities.GioHang;
import com.store.entities.NguoiDung;

public interface GioHangRepository extends JpaRepository<GioHang, Long>{
	
	GioHang findByNguoiDung(NguoiDung n);
	
}
