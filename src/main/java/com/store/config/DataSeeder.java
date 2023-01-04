package com.store.config;

import com.store.entities.NguoiDung;
import com.store.entities.VaiTro;
import com.store.repository.NguoiDungRepository;
import com.store.repository.VaiTroRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import java.util.HashSet;

@Component
public class DataSeeder implements ApplicationListener<ContextRefreshedEvent> {

	@Autowired
	private NguoiDungRepository userRepository;

	@Autowired
	private VaiTroRepository roleRepository;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@Override
	public void onApplicationEvent(ContextRefreshedEvent arg0) {
		// vai trof
		if (roleRepository.findByTenVaiTro("ROLE_ADMIN") == null) {
			roleRepository.save(new VaiTro("ROLE_ADMIN"));
		}

		if (roleRepository.findByTenVaiTro("ROLE_MEMBER") == null) {
			roleRepository.save(new VaiTro("ROLE_MEMBER"));
		}


		// Admin account
		if (userRepository.findByEmail("admin@gmail.com") == null) {
			NguoiDung admin = new NguoiDung();
			admin.setEmail("admin@gmail.com");
			admin.setPassword(passwordEncoder.encode("123456"));
			admin.setHoTen("Trang");
			admin.setSoDienThoai("123456789");
			HashSet<VaiTro> roles = new HashSet<>();
			roles.add(roleRepository.findByTenVaiTro("ROLE_ADMIN"));
			roles.add(roleRepository.findByTenVaiTro("ROLE_MEMBER"));
			admin.setVaiTro(roles);
			userRepository.save(admin);
		}

		// Member account
		if (userRepository.findByEmail("member@gmail.com") == null) {
			NguoiDung member = new NguoiDung();
			member.setEmail("member@gmail.com");
			member.setPassword(passwordEncoder.encode("123456"));
			HashSet<VaiTro> roles = new HashSet<>();
			roles.add(roleRepository.findByTenVaiTro("ROLE_MEMBER"));
			member.setVaiTro(roles);
			userRepository.save(member);
		}

	}
}
