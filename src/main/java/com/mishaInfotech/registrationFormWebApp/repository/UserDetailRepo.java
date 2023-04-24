package com.mishaInfotech.registrationFormWebApp.repository;

import com.mishaInfotech.registrationFormWebApp.entity.UserDetailEntity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDetailRepo extends JpaRepository<UserDetailEntity, Long> {

}
