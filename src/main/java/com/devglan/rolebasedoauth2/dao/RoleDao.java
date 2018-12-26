package com.devglan.rolebasedoauth2.dao;

import com.devglan.rolebasedoauth2.model.Role;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Set;

public interface RoleDao extends CrudRepository<Role, Long> {

    @Query(value = "SELECT * FROM Roles where name IN (:roles)", nativeQuery = true)
    Set<Role> find(@Param("roles") List<String> roles);
}
