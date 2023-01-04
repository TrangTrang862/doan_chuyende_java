package com.store.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.store.entities.VaiTro;

public interface VaiTroRepository extends JpaRepository<VaiTro, Long> {

	VaiTro findByTenVaiTro(String tenVaiTro);
}
