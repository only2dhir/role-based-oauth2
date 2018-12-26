package com.devglan.rolebasedoauth2.service;

import com.devglan.rolebasedoauth2.dto.UserDto;
import com.devglan.rolebasedoauth2.model.User;

import java.util.List;

public interface UserService {

    UserDto save(UserDto user);
    List<UserDto> findAll();
    User findOne(long id);
    void delete(long id);
}
